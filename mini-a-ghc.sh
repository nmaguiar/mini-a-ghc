#!/usr/bin/env bash
# Host-side launcher for the mini-a-ghc container.
#
# Usage: mini-a-ghc.sh [help | [--no-mount] [mini-a args... | command args...]]
#
# Env:
#   GH_TOKEN         GitHub token (default: `gh auth token` on the host)
#   OAF_MODEL        full model definition (default: ghcopilot using MINI_A_MODEL)
#   MINI_A_MODEL     Copilot model name (default: gpt-5-mini)
#   MINI_A_LC_MODEL  Copilot low-cost model name -> OAF_LC_MODEL (optional)
#   MINI_A_VAL_MODEL Copilot validation model name -> OAF_VAL_MODEL (optional)
#   MINI_A_DEC_MODEL Copilot decision model name -> OAF_DECIDE_MODEL (optional)
#   OAF_LC_MODEL, OAF_VAL_MODEL, OAF_DECIDE_MODEL are passed through when set
#   MINI_A_DIR       host folder to mount at /work (default: current dir)
#   MINI_A_IMAGE     image to run (default: nmaguiar/mini-a-ghc)
set -euo pipefail

if [ "${1:-}" = "help" ]; then
  args=(docker run --rm)
  [ -t 0 ] && [ -t 1 ] && args+=(-ti)
  exec "${args[@]}" "${MINI_A_IMAGE:-nmaguiar/mini-a-ghc}" help
fi

mount=1
if [ "${1:-}" = "--no-mount" ]; then
  mount=0
  shift
fi

if [ -z "${GH_TOKEN:-}" ]; then
  if command -v gh >/dev/null 2>&1; then
    GH_TOKEN="$(gh auth token 2>/dev/null || true)"
  fi
  if [ -z "${GH_TOKEN:-}" ]; then
    echo "No GitHub token: set GH_TOKEN or run 'gh auth login' on the host (see README)." >&2
    exit 1
  fi
fi
export GH_TOKEN

# ghcopilot model definition: ghc_model_def MODEL TOKEN [decide]
# Decision configs also need a top-level "model" (Mini-A validates it there).
ghc_model_def() {
  local top=""
  [ "${3:-}" = "decide" ] && top="model: $1, "
  printf "(type: ghcopilot, %soptions: (model: %s, timeout: 900000, token: '%s'))" "$top" "$1" "$2"
}

if [ -z "${OAF_MODEL:-}" ]; then
  OAF_MODEL="$(ghc_model_def "${MINI_A_MODEL:-gpt-5-mini}" "$GH_TOKEN")"
fi
[ -n "${MINI_A_LC_MODEL:-}" ] && [ -z "${OAF_LC_MODEL:-}" ] && OAF_LC_MODEL="$(ghc_model_def "$MINI_A_LC_MODEL" "$GH_TOKEN")"
[ -n "${MINI_A_VAL_MODEL:-}" ] && [ -z "${OAF_VAL_MODEL:-}" ] && OAF_VAL_MODEL="$(ghc_model_def "$MINI_A_VAL_MODEL" "$GH_TOKEN")"
[ -n "${MINI_A_DEC_MODEL:-}" ] && [ -z "${OAF_DECIDE_MODEL:-}" ] && OAF_DECIDE_MODEL="$(ghc_model_def "$MINI_A_DEC_MODEL" "$GH_TOKEN" decide)"

args=(docker run --rm)
[ -t 0 ] && [ -t 1 ] && args+=(-ti)
args+=(-e OAF_MODEL -e GH_TOKEN)
for var in OAF_LC_MODEL OAF_VAL_MODEL OAF_DECIDE_MODEL; do
  if [ -n "${!var:-}" ]; then
    export "$var"
    args+=(-e "$var")
  fi
done

if [ "$mount" -eq 1 ]; then
  args+=(-v "${MINI_A_DIR:-$PWD}:/work" -w /work)
  # Linux: keep files created in the mount owned by the host user
  if [ "$(uname -s)" = "Linux" ]; then
    args+=(--user "$(id -u):$(id -g)")
  fi
fi

args+=("${MINI_A_IMAGE:-nmaguiar/mini-a-ghc}" "$@")
export OAF_MODEL
exec "${args[@]}"
