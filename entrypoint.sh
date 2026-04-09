#!/usr/bin/env bash

set -euo pipefail

token_file="/tmp/token.txt"

cleanup() {
  rm -f "$token_file"
}

trap cleanup EXIT

/openaf/oafp data="$OAF_MODEL" path=token outfile="$token_file"
/usr/bin/gh auth login --with-token < "$token_file"

cleanup
trap - EXIT

cd /openaf/mini-a
if [ "$#" -eq 0 ]; then
  /openaf/opack exec mini-a
elif [[ "$1" == -* || "$1" == *=* ]]; then
  /openaf/opack exec mini-a "$@"
fi

exec "$@"
