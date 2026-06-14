#!/usr/bin/env bash

set -euo pipefail

OAFP_BIN="${OAFP_BIN:-/openaf/oafp}"
GH_BIN="${GH_BIN:-/usr/bin/gh}"
OPACK_BIN="${OPACK_BIN:-/openaf/opack}"
TOKEN_FILE="${TOKEN_FILE:-/tmp/token.txt}"
WORKDIR="${WORKDIR:-/home/openaf}"

token_file="$TOKEN_FILE"

cleanup() {
  rm -f "$token_file"
}

run_init_script() {
  if [ -z "${INIT_SCRIPT:-}" ]; then
    return
  fi

  if [ ! -f "$INIT_SCRIPT" ]; then
    echo "INIT_SCRIPT does not exist: $INIT_SCRIPT" >&2
    exit 1
  fi

  /usr/bin/env bash "$INIT_SCRIPT"
}

trap cleanup EXIT

if [[ "${OAF_MODEL:-}" == *ghcopilot* ]]; then
  "$OAFP_BIN" data="$OAF_MODEL" path=options.token outfile="$token_file"
  "$GH_BIN" auth login --with-token < "$token_file"

  cleanup
  trap - EXIT
fi

cd "$WORKDIR"
if [ "$#" -eq 0 ]; then
  run_init_script
  "$OPACK_BIN" exec mini-a
  exit 0
elif [ "$1" = "list" ]; then
  "$OAFP_BIN" libs="@AWS/aws.js,@ghcopilot/ghcopilot.js" in=llmmodels data="()"
  exit 0
fi

if command -v "$1" >/dev/null 2>&1 || [ -x "$1" ]; then
  exec "$@"
fi

run_init_script
"$OPACK_BIN" exec mini-a "$@"
