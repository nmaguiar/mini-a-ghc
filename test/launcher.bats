#!/usr/bin/env bats

setup() {
  LAUNCHER="$BATS_TEST_DIRNAME/../mini-a-ghc.sh"
  STUB_LOG_DIR="$BATS_TEST_TMPDIR/logs"
  mkdir -p "$STUB_LOG_DIR"
  export STUB_LOG_DIR
  export DOCKER_BIN="$BATS_TEST_DIRNAME/stubs/docker"
  export MINI_A_DATA="$BATS_TEST_TMPDIR/data"
  export MINI_A_DIR="$BATS_TEST_TMPDIR"
  export MINI_A_NO_BROWSER=1 MINI_A_PORT_CHECK=0
  # no host gh: the token comes only from the environment
  export PATH="$BATS_TEST_TMPDIR/bin:/usr/bin:/bin"
  mkdir -p "$BATS_TEST_TMPDIR/bin"
  unset GH_TOKEN GITHUB_TOKEN OAF_MODEL MINI_A_MODEL MINI_A_LC_MODEL MINI_A_VAL_MODEL MINI_A_DEC_MODEL \
        OAF_LC_MODEL OAF_VAL_MODEL OAF_DECIDE_MODEL MINI_A_IMAGE || true
}

log() { cat "$STUB_LOG_DIR/docker.log"; }
has() { grep -qxF -- "$1" "$STUB_LOG_DIR/docker.log"; }
# "has_pair -p 127.0.0.1:1:1": flag directly followed by its value
has_pair() { grep -A1 -xF -- "$1" "$STUB_LOG_DIR/docker.log" | grep -qxF -- "$2"; }

@test "no command starts the console with the default Copilot model" {
  export GH_TOKEN=tok
  run "$LAUNCHER"
  [ "$status" -eq 0 ]
  has_pair -e OAF_MODEL
  has_pair -v "$MINI_A_DIR:/work"
  [ "$(tail -1 "$STUB_LOG_DIR/docker.log")" = "nmaguiar/mini-a-ghc" ]
}

@test "no GitHub token fails for commands that need a model" {
  run "$LAUNCHER" goal=hello
  [ "$status" -eq 1 ]
  [[ "$output" == *"No GitHub token"* ]]
  [ ! -f "$STUB_LOG_DIR/docker.log" ]
}

@test "a non-Copilot OAF_MODEL needs no GitHub token" {
  export OAF_MODEL="(type: openai, options: (model: gpt-5))"
  run "$LAUNCHER" goal=hello
  [ "$status" -eq 0 ]
  has_pair -e OAF_MODEL
  ! has GH_TOKEN
}

@test "STUDIO_TOKEN is passed through when set" {
  export STUDIO_TOKEN=0123456789abcdef0123456789abcdef
  run "$LAUNCHER" studio
  has_pair -e STUDIO_TOKEN
}

@test "commands that need no model run without a token" {
  run "$LAUNCHER" wiki graph wiki=proj
  [ "$status" -eq 0 ]
  has wikiroot=/data/wikis/proj
  ! has OAF_MODEL
}

@test "studio publishes its port and mounts the data folder" {
  run "$LAUNCHER" studio
  [ "$status" -eq 0 ]
  has_pair -p 127.0.0.1:8890:8890
  has_pair -v "$MINI_A_DATA:/data"
  has studio
  has onport=8890
  has 'studioallowroots=["/data/wikis"]'
  has studiohome=/data/studio
  [ -d "$MINI_A_DATA/wikis" ] && [ -d "$MINI_A_DATA/studio" ]
}

@test "studio keeps an explicit port" {
  run "$LAUNCHER" studio onport=9000
  has_pair -p 127.0.0.1:9000:9000
  [ "$(grep -c '^onport=' "$STUB_LOG_DIR/docker.log")" -eq 1 ]
}

@test "console with wiki=NAME enables the wiki" {
  export GH_TOKEN=tok
  run "$LAUNCHER" console wiki=proj
  [ "$status" -eq 0 ]
  has wikiroot=/data/wikis/proj
  has mode=wiki
  ! has usewiki=true
  has_pair -v "$MINI_A_DATA:/data"
  ! has console
}

@test "wiki=NAME with an explicit mode adds usewiki=true instead" {
  export GH_TOKEN=tok
  run "$LAUNCHER" batch wiki=proj mode=shell goal=x
  has mode=shell
  has usewiki=true
  ! has mode=wiki
}

@test "web and web-adv publish their ports" {
  export GH_TOKEN=tok
  run "$LAUNCHER" web wiki=proj
  has onport=12345
  has_pair -p 127.0.0.1:12345:12345
  ! has webadvanced=true

  run "$LAUNCHER" web-adv
  [[ "$output" == *"http://localhost:12346/#token="* ]]
  has onport=12346
  has webadvanced=true
  grep -q '^webtoken=[0-9a-f]\{32\}$' "$STUB_LOG_DIR/docker.log"
  has_pair -p 127.0.0.1:12346:12346
}

@test "web-adv prints the URL with an explicit token" {
  export GH_TOKEN=tok
  run "$LAUNCHER" web-adv webtoken=abc onport=8000
  [[ "$output" == *"http://localhost:8000/#token=abc"* ]]
  [ "$(grep -c '^webtoken=' "$STUB_LOG_DIR/docker.log")" -eq 1 ]
}

@test "any onport=N is published on localhost" {
  export GH_TOKEN=tok
  run "$LAUNCHER" --no-mount onport=12399
  has_pair -p 127.0.0.1:12399:12399
  ! has -w
}

@test "mcp over STDIO uses -i without a TTY and a read-only data mount" {
  run "$LAUNCHER" mcp wiki=proj
  [ "$status" -eq 0 ]
  has -i
  ! has -ti
  has_pair -v "$MINI_A_DATA:/data:ro"
  ! has_pair -v "$MINI_A_DIR:/work"
  has wiki
  has mcp
  has wikiroot=/data/wikis/proj
  ! grep -q '^onport=' "$STUB_LOG_DIR/docker.log"
}

@test "mcp --http uses the default ports per server" {
  run "$LAUNCHER" mcp wiki=proj --http
  has onport=12347
  has_pair -p 127.0.0.1:12347:12347
  [[ "$output" == *"http://localhost:12347/mcp"* ]]

  run "$LAUNCHER" mcp-safe wiki=proj --http
  has onport=12348
  has_pair -v "$MINI_A_DATA:/data:ro"

  run "$LAUNCHER" mcp-safe wiki=proj --http 9100
  has onport=9100
}

@test "mcp-ops gets a writable data mount" {
  run "$LAUNCHER" mcp-ops wiki=proj --http
  has_pair -v "$MINI_A_DATA:/data"
  ! has_pair -v "$MINI_A_DIR:/work"
}

@test "mcp without a wiki fails" {
  run "$LAUNCHER" mcp
  [ "$status" -eq 1 ]
  [[ "$output" == *"needs wiki=NAME"* ]]
}

@test "batch needs a goal and runs without a TTY" {
  export GH_TOKEN=tok
  run "$LAUNCHER" batch
  [ "$status" -eq 1 ]

  run "$LAUNCHER" batch 'goal=two words' outfile=/work/out.md
  [ "$status" -eq 0 ]
  ! has -ti
  ! has -i
  has 'goal=two words'
  has outfile=/work/out.md
  has shellbatch=true
  ! has batch
}

@test "MINI_A_* extra models become OAF_* models" {
  export GH_TOKEN=tok MINI_A_LC_MODEL=gpt-5-mini MINI_A_DEC_MODEL=gpt-4.1
  run "$LAUNCHER"
  has_pair -e OAF_LC_MODEL
  has_pair -e OAF_DECIDE_MODEL
  ! has OAF_VAL_MODEL
}

@test "mcp-config prints a docker STDIO snippet" {
  run "$LAUNCHER" mcp-config wiki=proj --safe
  [ "$status" -eq 0 ]
  [[ "$output" == *'"mini-a-wiki-safe-proj"'* ]]
  [[ "$output" == *"\"-i\", \"--rm\", \"-v\", \"$MINI_A_DATA/wikis:/data/wikis:ro\""* ]]
  [[ "$output" == *'"wiki", "mcp-safe", "wikiroot=/data/wikis/proj"'* ]]
  [ ! -f "$STUB_LOG_DIR/docker.log" ]
}

@test "help topics and help-wiki go to the container without a token" {
  run "$LAUNCHER" help wiki
  [ "$status" -eq 0 ]
  [ "$(tail -3 "$STUB_LOG_DIR/docker.log" | tr '\n' ' ')" = "nmaguiar/mini-a-ghc help wiki " ]
  run "$LAUNCHER" help-wiki
  [ "$(tail -1 "$STUB_LOG_DIR/docker.log")" = "help-wiki" ]
  ! has OAF_MODEL
}

@test "commands lists the launcher commands" {
  run "$LAUNCHER" commands
  [ "$status" -eq 0 ]
  [[ "$output" == *"web-adv"* ]]
  [[ "$output" == *"mcp-config"* ]]
}
