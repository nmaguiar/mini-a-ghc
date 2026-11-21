#!/usr/bin/env bash

set -euo pipefail

if [ -n "${OJOB:-}" ]; then
  exec /bin/bash "${OPENAF_ENTRYPOINT:-/openaf/.docker/entrypoint.sh}" "$@"
fi

OAFP_BIN="${OAFP_BIN:-/openaf/oafp}"
GH_BIN="${GH_BIN:-/usr/bin/gh}"
OPACK_BIN="${OPACK_BIN:-/openaf/opack}"
TOKEN_FILE="${TOKEN_FILE:-/tmp/token.txt}"
WORKDIR="${WORKDIR:-$PWD}"
HELP_FILE="${HELP_FILE:-/openaf/USAGE.md.gz}"

token_file="$TOKEN_FILE"

# help needs no model or token, so it runs before any authentication
if [ "${1:-}" = "help" ]; then
  if [ -t 0 ] && [ -t 1 ]; then
    exec "$OAFP_BIN" "$HELP_FILE" in=md mdtemplate=true -p
  fi
  exec "$OAFP_BIN" "$HELP_FILE" in=md mdtemplate=true
fi

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

# Reuse a mounted gh login (e.g. -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh)
if [ -z "${GH_TOKEN:-}" ] && [ -z "${GITHUB_TOKEN:-}" ] && [ -z "${OAF_MODEL:-}" ]; then
  if gh_token="$("$GH_BIN" auth token 2>/dev/null)" && [ -n "$gh_token" ]; then
    export GH_TOKEN="$gh_token"
    export OAF_MODEL="(type: ghcopilot, options: (model: ${MINI_A_MODEL:-gpt-5-mini}, timeout: 900000, token: '$GH_TOKEN'))"
  elif [ -n "${GH_CONFIG_DIR:-}" ]; then
    echo "No GitHub token found in $GH_CONFIG_DIR. If gh keeps it in the macOS Keychain, run once on the host: gh auth login --insecure-storage" >&2
    exit 1
  fi
fi

# Custom ghcopilot OAF_MODEL without a token + mounted gh login: fill options.token from gh
if [[ -n "${OAF_MODEL:-}" && "$OAF_MODEL" == *ghcopilot* && -n "${GH_CONFIG_DIR:-}" \
      && -z "${GH_TOKEN:-}" && -z "${GITHUB_TOKEN:-}" ]]; then
  model_token="$("$OAFP_BIN" data="$OAF_MODEL" path="options.token || ''" out=raw)"
  if [ -z "$model_token" ]; then
    if gh_token="$("$GH_BIN" auth token 2>/dev/null)" && [ -n "$gh_token" ]; then
      export GH_TOKEN="$gh_token"
      model_out=slon
      trimmed_model="${OAF_MODEL#"${OAF_MODEL%%[![:space:]]*}"}"
      [[ "$trimmed_model" == \{* ]] && model_out=ndjson
      OAF_MODEL="$("$OAFP_BIN" data="$OAF_MODEL" \
        path="merge(@, {options: merge(options || \`{}\`, {token: '$GH_TOKEN'})})" out=$model_out)"
      export OAF_MODEL
    else
      echo "No GitHub token found in $GH_CONFIG_DIR. If gh keeps it in the macOS Keychain, run once on the host: gh auth login --insecure-storage" >&2
      exit 1
    fi
  fi
fi

# gh authenticates on its own when GH_TOKEN/GITHUB_TOKEN is set; "auth login" would fail
if [[ "${OAF_MODEL:-}" == *ghcopilot* && -z "${GH_TOKEN:-}" && -z "${GITHUB_TOKEN:-}" ]]; then
  "$OAFP_BIN" data="$OAF_MODEL" path=options.token outfile="$token_file"
  "$GH_BIN" auth login --with-token < "$token_file"

  cleanup
  trap - EXIT
fi

cd "$WORKDIR"
if [ ! -w "$WORKDIR" ]; then
  echo "warning: $WORKDIR is not writable by uid $(id -u); on Linux hosts run the container with --user \"\$(id -u):\$(id -g)\"" >&2
fi
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
