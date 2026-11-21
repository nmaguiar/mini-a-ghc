#!/usr/bin/env bash
# Host-side launcher for the mini-a-ghc container.
#
# Usage: mini-a-ghc.sh [help | [--no-mount] [mini-a args... | command args...]]
#
# Env:
#   GH_TOKEN         GitHub token (default: `gh auth token` on the host)
#   OAF_MODEL        full model definition (default: ghcopilot using MINI_A_MODEL)
#   MINI_A_MODEL     Copilot model name (default: gpt-5-mini)
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

if [ -z "${OAF_MODEL:-}" ]; then
  OAF_MODEL="(type: ghcopilot, options: (model: ${MINI_A_MODEL:-gpt-5-mini}, timeout: 900000, token: '$GH_TOKEN'))"
fi

args=(docker run --rm)
[ -t 0 ] && [ -t 1 ] && args+=(-ti)
args+=(-e OAF_MODEL -e GH_TOKEN)

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
