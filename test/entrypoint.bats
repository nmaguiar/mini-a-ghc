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

  unset OAF_MODEL INIT_SCRIPT || true
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
