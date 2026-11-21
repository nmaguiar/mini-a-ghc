#!/usr/bin/env bats

setup() {
  WIKI="$BATS_TEST_DIRNAME/../wiki.sh"
  STUB_LOG_DIR="$BATS_TEST_TMPDIR/logs"
  mkdir -p "$STUB_LOG_DIR"
  export STUB_LOG_DIR
  export OJOB_BIN="$BATS_TEST_DIRNAME/stubs/ojob"
  export MINI_A_HOME="/openaf/mini-a"
}

@test "no command prints usage without running ojob" {
  run "$WIKI"

  [ "$status" -eq 0 ]
  [[ "$output" == *"Usage: wiki <command>"* ]]
  [ ! -f "$STUB_LOG_DIR/ojob.log" ]
}

@test "unknown command fails with usage" {
  run "$WIKI" nope

  [ "$status" -eq 1 ]
  [[ "$output" == *"Unknown wiki command: nope"* ]]
  [ ! -f "$STUB_LOG_DIR/ojob.log" ]
}

@test "each command maps to its bundled oJob" {
  while read -r cmd job; do
    rm -f "$STUB_LOG_DIR/ojob.log"
    run "$WIKI" "$cmd" label=x
    [ "$status" -eq 0 ]
    [ "$(head -1 "$STUB_LOG_DIR/ojob.log")" = "/openaf/mini-a/$job" ]
  done <<'MAP'
hydrate utils/wikiHydrate.yaml
ingest mini-a-ingest.yaml
absorb mini-a-absorb.yaml
dream utils/wikiDream.yaml
compact utils/wikiCompact.yaml
ops utils/wikiOps.yaml
query utils/wikiQuery.yaml
graph utils/wikiGraph.yaml
studio mini-a-wiki-studio.yaml
mcp mcps/mcp-wiki.yaml
mcp-ops mcps/mcp-wiki-ops.yaml
mcp-safe mcps/mcp-wiki-safe.yaml
mcp-skills mcps/mcp-skills.yaml
MAP
}

@test "arguments are passed through unchanged" {
  run "$WIKI" query wikiroot=/data/wiki 'goal=two words' ''

  [ "$status" -eq 0 ]
  [ "$(cat "$STUB_LOG_DIR/ojob.log")" = "$(printf '%s\n' /openaf/mini-a/utils/wikiQuery.yaml wikiroot=/data/wiki 'goal=two words' '')" ]
}

@test "studio defaults to a container-friendly listener without a browser" {
  run "$WIKI" studio 'studioallowroots=["/data/wikis"]'

  [ "$status" -eq 0 ]
  grep -qx 'studiohost=0.0.0.0' "$STUB_LOG_DIR/ojob.log"
  grep -qx 'openbrowser=false' "$STUB_LOG_DIR/ojob.log"
}

@test "studio keeps explicit host and browser settings" {
  run "$WIKI" studio studiohost=127.0.0.1 openbrowser=true

  [ "$status" -eq 0 ]
  [ "$(grep -c '^studiohost=' "$STUB_LOG_DIR/ojob.log")" -eq 1 ]
  [ "$(grep -c '^openbrowser=' "$STUB_LOG_DIR/ojob.log")" -eq 1 ]
  grep -qx 'studiohost=127.0.0.1' "$STUB_LOG_DIR/ojob.log"
}

@test "mcp servers get a default label unless one is given" {
  run "$WIKI" mcp wikiroot=/data/wiki
  grep -qx 'label=Mini-A wiki' "$STUB_LOG_DIR/ojob.log"

  run "$WIKI" mcp-skills wikiroot=/data/skills
  grep -qx 'label=Mini-A skills' "$STUB_LOG_DIR/ojob.log"

  run "$WIKI" mcp-safe wikiroot=/data/wiki label=Mine
  [ "$(grep -c '^label=' "$STUB_LOG_DIR/ojob.log")" -eq 1 ]
  grep -qx 'label=Mine' "$STUB_LOG_DIR/ojob.log"
}
