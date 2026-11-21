#!/usr/bin/env bats

setup() {
  ENTRYPOINT="$BATS_TEST_DIRNAME/../entrypoint.sh"
  STUBS="$BATS_TEST_DIRNAME/stubs"

  STUB_LOG_DIR="$BATS_TEST_TMPDIR/logs"
  mkdir -p "$STUB_LOG_DIR"
  export STUB_LOG_DIR

  TOKEN_FILE="$BATS_TEST_TMPDIR/token.txt"
  WORKDIR="$BATS_TEST_TMPDIR"

  export OAFP_BIN="$STUBS/oafp"
  export GH_BIN="$STUBS/gh"
  export OPACK_BIN="$STUBS/opack"
  export TOKEN_FILE
  export WORKDIR

  unset STUB_OAFP_MODEL_TOKEN OAF_MODEL MINI_A_MODEL MINI_A_LC_MODEL MINI_A_VAL_MODEL MINI_A_DEC_MODEL OAF_LC_MODEL OAF_VAL_MODEL OAF_DECIDE_MODEL GH_CONFIG_DIR STUB_GH_TOKEN INIT_SCRIPT OJOB OPENAF_ENTRYPOINT GH_TOKEN GITHUB_TOKEN HELP_FILE || true
}

@test "OJOB delegates to OpenAF without Mini-A startup or implicit arguments" {
  export OJOB="jobs/my job.yaml"
  export OPENAF_ENTRYPOINT="$BATS_TEST_TMPDIR/openaf-entrypoint.sh"
  export OAF_MODEL="(type: ghcopilot)"
  export INIT_SCRIPT="$BATS_TEST_TMPDIR/does-not-exist.sh"
  export WORKDIR="$BATS_TEST_TMPDIR/does-not-exist"
  cat > "$OPENAF_ENTRYPOINT" <<'EOF'
printf '<%s>\n' "$OJOB" "$@"
exit 23
EOF

  run "$ENTRYPOINT"
  [ "$status" -eq 23 ]
  [ "$output" = '<jobs/my job.yaml>' ]

  run "$ENTRYPOINT" list 'message=two words' ''
  [ "$status" -eq 23 ]
  [ "$output" = "$(printf '<%s>\n' "$OJOB" list 'message=two words' '')" ]
  [ ! -e "$STUB_LOG_DIR/oafp.log" ]
  [ ! -e "$STUB_LOG_DIR/gh.log" ]
  [ ! -e "$STUB_LOG_DIR/opack.log" ]
}

@test "empty OJOB uses the normal Mini-A startup" {
  export OJOB=""
  export OPENAF_ENTRYPOINT="$BATS_TEST_TMPDIR/does-not-exist.sh"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q 'exec mini-a' "$STUB_LOG_DIR/opack.log"
}

@test "ghcopilot OAF_MODEL extracts token, logs in gh, and removes token file" {
  export OAF_MODEL="(type: ghcopilot, options: (token: 'abc123'))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "path=options.token" "$STUB_LOG_DIR/oafp.log"
  grep -q "outfile=$TOKEN_FILE" "$STUB_LOG_DIR/oafp.log"
  grep -q "auth login --with-token" "$STUB_LOG_DIR/gh.log"
  [ "$(cat "$STUB_LOG_DIR/gh-stdin.txt")" = "fake-token" ]
  [ ! -f "$TOKEN_FILE" ]
}

@test "non-ghcopilot OAF_MODEL never invokes gh" {
  export OAF_MODEL="(type: openai, options: (model: gpt-4))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
}

@test "no args and no INIT_SCRIPT launches mini-a directly" {
  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "exec mini-a" "$STUB_LOG_DIR/opack.log"
}

@test "no args with existing INIT_SCRIPT runs it before mini-a" {
  marker="$BATS_TEST_TMPDIR/marker"
  init_script="$BATS_TEST_TMPDIR/init.sh"
  cat > "$init_script" <<EOF
#!/usr/bin/env bash
touch "$marker"
EOF
  chmod +x "$init_script"
  export INIT_SCRIPT="$init_script"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [ -f "$marker" ]
  grep -q "exec mini-a" "$STUB_LOG_DIR/opack.log"
}

@test "non-existent INIT_SCRIPT fails before mini-a runs" {
  export INIT_SCRIPT="$BATS_TEST_TMPDIR/does-not-exist.sh"

  run "$ENTRYPOINT"

  [ "$status" -eq 1 ]
  [[ "$output" == *"INIT_SCRIPT does not exist"* ]]
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "'list' argument lists models without launching mini-a" {
  run "$ENTRYPOINT" list

  [ "$status" -eq 0 ]
  grep -q "in=llmmodels" "$STUB_LOG_DIR/oafp.log"
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "existing executable as first arg is exec'd directly, skipping INIT_SCRIPT and mini-a" {
  marker="$BATS_TEST_TMPDIR/marker"
  init_script="$BATS_TEST_TMPDIR/init.sh"
  cat > "$init_script" <<EOF
#!/usr/bin/env bash
touch "$marker"
EOF
  chmod +x "$init_script"
  export INIT_SCRIPT="$init_script"

  run "$ENTRYPOINT" /usr/bin/true

  [ "$status" -eq 0 ]
  [ ! -f "$marker" ]
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "non-executable first arg runs INIT_SCRIPT then launches mini-a with original args" {
  marker="$BATS_TEST_TMPDIR/marker"
  init_script="$BATS_TEST_TMPDIR/init.sh"
  cat > "$init_script" <<EOF
#!/usr/bin/env bash
touch "$marker"
EOF
  chmod +x "$init_script"
  export INIT_SCRIPT="$init_script"

  run "$ENTRYPOINT" goal="do something" useshell=true

  [ "$status" -eq 0 ]
  [ -f "$marker" ]
  grep -q 'exec mini-a goal=do something useshell=true' "$STUB_LOG_DIR/opack.log"
}

@test "WORKDIR defaults to the current directory" {
  unset WORKDIR
  mkdir -p "$BATS_TEST_TMPDIR/mounted"
  cd "$BATS_TEST_TMPDIR/mounted"
  cat > "$BATS_TEST_TMPDIR/opack-pwd" <<'EOS'
#!/usr/bin/env bash
pwd -P
EOS
  chmod +x "$BATS_TEST_TMPDIR/opack-pwd"
  export OPACK_BIN="$BATS_TEST_TMPDIR/opack-pwd"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [ "$output" = "$(pwd -P)" ]
}

@test "GH_TOKEN set skips gh auth login" {
  export OAF_MODEL="(type: ghcopilot, options: (token: 'abc123'))"
  export GH_TOKEN="from-env"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
  [ ! -f "$STUB_LOG_DIR/oafp.log" ]
}

@test "'help' renders the usage markdown without login, INIT_SCRIPT or mini-a" {
  export OAF_MODEL="(type: ghcopilot, options: (token: 'abc123'))"
  export INIT_SCRIPT="$BATS_TEST_TMPDIR/does-not-exist.sh"
  export HELP_FILE="$BATS_TEST_TMPDIR/USAGE.md.gz"

  run "$ENTRYPOINT" help

  [ "$status" -eq 0 ]
  grep -q "oafp $HELP_FILE in=md mdtemplate=true" "$STUB_LOG_DIR/oafp.log"
  [ "$(wc -l < "$STUB_LOG_DIR/oafp.log")" -eq 1 ]
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "mounted gh login: token from gh auth token configures ghcopilot model" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"
  export STUB_GH_TOKEN="host-token"
  export OPACK_BIN="$BATS_TEST_TMPDIR/opack-env"
  cat > "$OPACK_BIN" <<'EOF'
#!/usr/bin/env bash
echo "GH_TOKEN=$GH_TOKEN" > "$STUB_LOG_DIR/env.log"
echo "OAF_MODEL=$OAF_MODEL" >> "$STUB_LOG_DIR/env.log"
EOF
  chmod +x "$OPACK_BIN"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "GH_TOKEN=host-token" "$STUB_LOG_DIR/env.log"
  grep -q "type: ghcopilot" "$STUB_LOG_DIR/env.log"
  grep -q "model: gpt-6-luna" "$STUB_LOG_DIR/env.log"
  grep -q "token: 'host-token'" "$STUB_LOG_DIR/env.log"
  ! grep -q "auth login" "$STUB_LOG_DIR/gh.log"
}

@test "mounted gh login: MINI_A_MODEL selects the model" {
  export STUB_GH_TOKEN="host-token"
  export MINI_A_MODEL="gpt-4.1"
  export OPACK_BIN="$BATS_TEST_TMPDIR/opack-env"
  cat > "$OPACK_BIN" <<'EOF'
#!/usr/bin/env bash
echo "OAF_MODEL=$OAF_MODEL" > "$STUB_LOG_DIR/env.log"
EOF
  chmod +x "$OPACK_BIN"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "model: gpt-4.1" "$STUB_LOG_DIR/env.log"
}

@test "mounted gh login: no token and GH_CONFIG_DIR set fails with Keychain hint" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"

  run "$ENTRYPOINT"

  [ "$status" -eq 1 ]
  [[ "$output" == *"--insecure-storage"* ]]
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "no token and no GH_CONFIG_DIR keeps the current behaviour" {
  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "exec mini-a" "$STUB_LOG_DIR/opack.log"
}

@test "explicit OAF_MODEL never calls gh auth token" {
  export OAF_MODEL="(type: openai, options: (model: gpt-4))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
}

@test "custom SLON ghcopilot model without token gets token from gh auth token" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"
  export STUB_GH_TOKEN="host-token"
  export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "out=slon" "$STUB_LOG_DIR/oafp.log"
  grep -q "token: 'host-token'" "$STUB_LOG_DIR/oafp.log"
  ! grep -q "auth login" "$STUB_LOG_DIR/gh.log"
}

@test "custom JSON ghcopilot model without token is rewritten as JSON" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"
  export STUB_GH_TOKEN="host-token"
  export OAF_MODEL='{"type":"ghcopilot","options":{"model":"gpt-4.1"}}'

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "out=ndjson" "$STUB_LOG_DIR/oafp.log"
}

@test "custom ghcopilot model with token does not call gh auth token" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"
  export STUB_GH_TOKEN="host-token"
  export STUB_OAFP_MODEL_TOKEN="abc"
  export OAF_MODEL="(type: ghcopilot, options: (token: 'abc'))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  ! grep -q "auth token" "$STUB_LOG_DIR/gh.log"
}

@test "custom ghcopilot model without token and no GH_CONFIG_DIR is unchanged" {
  export STUB_GH_TOKEN="host-token"
  export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1))"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  ! grep -q "auth token" "$STUB_LOG_DIR/gh.log"
}

@test "custom ghcopilot model, GH_CONFIG_DIR set, gh has no token fails with hint" {
  export GH_CONFIG_DIR="$BATS_TEST_TMPDIR/gh"
  export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1))"

  run "$ENTRYPOINT"

  [ "$status" -eq 1 ]
  [[ "$output" == *"--insecure-storage"* ]]
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

env_opack() {
  export OPACK_BIN="$BATS_TEST_TMPDIR/opack-env"
  cat > "$OPACK_BIN" <<'EOS'
#!/usr/bin/env bash
{
  echo "OAF_MODEL=${OAF_MODEL:-}"
  echo "OAF_LC_MODEL=${OAF_LC_MODEL:-}"
  echo "OAF_VAL_MODEL=${OAF_VAL_MODEL:-}"
  echo "OAF_DECIDE_MODEL=${OAF_DECIDE_MODEL:-}"
} > "$STUB_LOG_DIR/env.log"
EOS
  chmod +x "$OPACK_BIN"
}

@test "mounted gh login: MINI_A_LC/VAL/DEC_MODEL configure the extra models" {
  export STUB_GH_TOKEN="host-token"
  export MINI_A_LC_MODEL="gpt-5-mini"
  export MINI_A_VAL_MODEL="gpt-4.1"
  export MINI_A_DEC_MODEL="gpt-4o"
  env_opack

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -qx "OAF_LC_MODEL=(type: ghcopilot, options: (model: gpt-5-mini, timeout: 900000, token: 'host-token'))" "$STUB_LOG_DIR/env.log"
  grep -qx "OAF_VAL_MODEL=(type: ghcopilot, options: (model: gpt-4.1, timeout: 900000, token: 'host-token'))" "$STUB_LOG_DIR/env.log"
  grep -qx "OAF_DECIDE_MODEL=(type: ghcopilot, model: gpt-4o, options: (model: gpt-4o, timeout: 900000, token: 'host-token'))" "$STUB_LOG_DIR/env.log"
  [ "$(grep -c 'auth token' "$STUB_LOG_DIR/gh.log")" -eq 1 ]
}

@test "unset MINI_A_LC/VAL/DEC_MODEL leave the extra models unset" {
  export STUB_GH_TOKEN="host-token"
  env_opack

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -qx "OAF_LC_MODEL=" "$STUB_LOG_DIR/env.log"
  grep -qx "OAF_VAL_MODEL=" "$STUB_LOG_DIR/env.log"
  grep -qx "OAF_DECIDE_MODEL=" "$STUB_LOG_DIR/env.log"
}

@test "explicit OAF_LC_MODEL is not overwritten by MINI_A_LC_MODEL" {
  export STUB_GH_TOKEN="host-token"
  export OAF_LC_MODEL="(type: openai, model: custom)"
  export MINI_A_LC_MODEL="gpt-5-mini"
  env_opack

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -qx "OAF_LC_MODEL=(type: openai, model: custom)" "$STUB_LOG_DIR/env.log"
}

@test "extra models use GH_TOKEN alongside a custom non-ghcopilot OAF_MODEL" {
  export GH_TOKEN="env-token"
  export OAF_MODEL="(type: openai, options: (model: gpt-4))"
  export MINI_A_DEC_MODEL="gpt-5-mini"
  env_opack

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -qx "OAF_MODEL=(type: openai, options: (model: gpt-4))" "$STUB_LOG_DIR/env.log"
  grep -q "OAF_DECIDE_MODEL=.*token: 'env-token'" "$STUB_LOG_DIR/env.log"
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
}

@test "extra model without any GitHub token warns and still starts mini-a" {
  export OAF_MODEL="(type: openai, options: (model: gpt-4))"
  export MINI_A_LC_MODEL="gpt-5-mini"
  env_opack

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  [[ "$output" == *"ignoring MINI_A_LC_MODEL"* ]]
  grep -qx "OAF_LC_MODEL=" "$STUB_LOG_DIR/env.log"
}

@test "GH_TOKEN alone builds the default ghcopilot model without gh" {
  export GH_TOKEN="env-token"
  export MINI_A_MODEL="gpt-4.1"
  export OPACK_BIN="$BATS_TEST_TMPDIR/opack-env"
  cat > "$OPACK_BIN" <<'EOS'
#!/usr/bin/env bash
echo "OAF_MODEL=$OAF_MODEL" > "$STUB_LOG_DIR/env.log"
EOS
  chmod +x "$OPACK_BIN"

  run "$ENTRYPOINT"

  [ "$status" -eq 0 ]
  grep -q "type: ghcopilot" "$STUB_LOG_DIR/env.log"
  grep -q "model: gpt-4.1" "$STUB_LOG_DIR/env.log"
  grep -q "token: 'env-token'" "$STUB_LOG_DIR/env.log"
  [ ! -f "$STUB_LOG_DIR/gh.log" ]
}

@test "'help TOPIC' and 'help-wiki' render the topic pages" {
  export HELP_DIR="$BATS_TEST_TMPDIR/help"

  run "$ENTRYPOINT" help-wiki
  [ "$status" -eq 0 ]
  grep -q "oafp $HELP_DIR/wiki.md.gz in=md mdtemplate=true" "$STUB_LOG_DIR/oafp.log"

  while read -r topic page; do
    rm -f "$STUB_LOG_DIR/oafp.log"
    run "$ENTRYPOINT" help "$topic"
    [ "$status" -eq 0 ]
    grep -q "oafp $HELP_DIR/$page.md.gz in=md" "$STUB_LOG_DIR/oafp.log"
  done <<'MAP'
wiki wiki
studio wiki
web web
web-adv web
mcp mcp
mcp-safe mcp
batch batch
models models
reference reference
commands reference
MAP
  [ ! -f "$STUB_LOG_DIR/opack.log" ]
}

@test "'help' with an unknown topic lists the topics" {
  run "$ENTRYPOINT" help nope
  [ "$status" -eq 1 ]
  [[ "$output" == *"Unknown help topic: nope"* ]]
  [[ "$output" == *"help-wiki"* ]]
  [ ! -f "$STUB_LOG_DIR/oafp.log" ]
}
