#!/usr/bin/env bash

set -euo pipefail

token_file="/tmp/token.txt"

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
  /openaf/oafp data="$OAF_MODEL" path=options.token outfile="$token_file"
  /usr/bin/gh auth login --with-token < "$token_file"

  cleanup
  trap - EXIT
fi

cd /home/openaf
if [ "$#" -eq 0 ]; then
  run_init_script
  /openaf/opack exec mini-a
elif [ "$1" = "list" ]; then
  /openaf/oafp libs="@AWS/aws.js,@ghcopilot/ghcopilot.js" in=llmmodels data="()" 
  exit 0
fi

if command -v "$1" >/dev/null 2>&1 || [ -x "$1" ]; then
  exec "$@"
fi

run_init_script
/openaf/opack exec mini-a "$@"
