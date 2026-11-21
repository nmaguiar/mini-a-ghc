#!/usr/bin/env bash
# Host-side launcher for the mini-a-ghc container (macOS, Linux, Git Bash/WSL).
#
# Usage: mini-a-ghc [--no-mount] [command] [args...]   (mini-a-ghc commands for the list)
#
# Env:
#   GH_TOKEN         GitHub token (default: `gh auth token` on the host)
#   OAF_MODEL        full model definition (default: ghcopilot using MINI_A_MODEL)
#   MINI_A_MODEL     Copilot model name (default: gpt-6-luna)
#   MINI_A_LC_MODEL  Copilot low-cost model name -> OAF_LC_MODEL (optional)
#   MINI_A_VAL_MODEL Copilot validation model name -> OAF_VAL_MODEL (optional)
#   MINI_A_DEC_MODEL Copilot decision model name -> OAF_DECIDE_MODEL (optional)
#   OAF_LC_MODEL, OAF_VAL_MODEL, OAF_DECIDE_MODEL are passed through when set
#   MINI_A_DIR       host folder to mount at /work (default: current dir)
#   MINI_A_DATA      host folder to mount at /data: wikis in wikis/, Studio state in studio/
#                    (default: ~/mini-a)
#   MINI_A_IMAGE     image to run (default: nmaguiar/mini-a-ghc)
#   MINI_A_NO_BROWSER=1  do not open the browser for studio/web/web-adv
set -euo pipefail

DOCKER_BIN="${DOCKER_BIN:-docker}"
IMAGE="${MINI_A_IMAGE:-nmaguiar/mini-a-ghc}"
DATA_DIR="${MINI_A_DATA:-$HOME/mini-a}"
WORK_DIR="${MINI_A_DIR:-$PWD}"

# Git Bash rewrites /work and /data/... into Windows paths unless told not to
export MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*'

STUDIO_PORT=8890
WEB_PORT=12345
WEBADV_PORT=12346
MCP_PORT=12347
MCP_SAFE_PORT=12348

usage() {
  cat <<EOF
Usage: mini-a-ghc [--no-mount] [command] [args...]

Wikis (kept in \$MINI_A_DATA/wikis, default ~/mini-a/wikis):
  studio [onport=$STUDIO_PORT]           Wiki Studio in the browser
  wiki <cmd> [wiki=NAME] ...        any wiki command (hydrate, query, graph, ...)

Try a wiki with Mini-A (wiki=NAME is optional, wikiaccess=rw to let it write):
  console [wiki=NAME] ...           interactive console (same as no command)
  web     [wiki=NAME] ...           simple web UI on http://localhost:$WEB_PORT
  web-adv [wiki=NAME] ...           Advanced web UI on http://localhost:$WEBADV_PORT (token in the URL)

MCP servers (STDIO for desktop clients; add --http [PORT] for HTTP):
  mcp      wiki=NAME [--http [PORT]]   read-only wiki server (HTTP port $MCP_PORT)
  mcp-safe wiki=NAME [--http [PORT]]   restricted server for untrusted clients (HTTP port $MCP_SAFE_PORT)
  mcp-ops  wiki=NAME [--http [PORT]]   maintenance server (read/write)
  mcp-config wiki=NAME [--safe]        print a config snippet for Claude Desktop / VS Code

Agent:
  batch goal="..." [outfile=/work/out.md] ...   non-interactive run (no TTY), answer in outfile

Other:
  doctor                            check Docker, image, token, folders and ports
  help [topic] | help-wiki         guides: wiki, web, mcp, batch, models, reference (no token needed)
  bash | <command> ...              run a command in the container
  key=value ...                     plain Mini-A arguments (as before)

The current folder is mounted at /work (--no-mount to skip). wiki=NAME means
wikiroot=/data/wikis/NAME. Any onport=N is published on localhost:N.
EOF
}

# --- helpers -----------------------------------------------------------------

has_arg() {
  local key="$1" a; shift
  for a in "$@"; do [[ "$a" == "$key="* ]] && return 0; done
  return 1
}

arg_value() {
  local key="$1" a; shift
  for a in "$@"; do [[ "$a" == "$key="* ]] && { printf '%s' "${a#"$key"=}"; return 0; }; done
  return 1
}

open_url() {
  [ -n "${MINI_A_NO_BROWSER:-}" ] && return 0
  if [ -n "${MINI_A_OPEN_BIN:-}" ]; then "$MINI_A_OPEN_BIN" "$1"
  elif [ "$(uname -s)" = "Darwin" ]; then open "$1"
  elif command -v cmd.exe >/dev/null 2>&1; then cmd.exe /c start "" "$1"
  elif command -v xdg-open >/dev/null 2>&1; then xdg-open "$1"
  fi >/dev/null 2>&1 || true
}

# Open URL once something answers on localhost:PORT (in the background, survives exec)
open_when_ready() {
  local port="$1" url="$2"
  [ -n "${MINI_A_NO_BROWSER:-}" ] && return 0
  command -v curl >/dev/null 2>&1 || return 0
  (
    for _ in $(seq 1 120); do
      if curl -s -o /dev/null --max-time 1 "http://127.0.0.1:$port/"; then
        open_url "$url"
        exit 0
      fi
      sleep 1
    done
  ) </dev/null >/dev/null 2>&1 &
}

random_token() {
  if command -v openssl >/dev/null 2>&1; then openssl rand -hex 16
  else LC_ALL=C tr -dc 'a-f0-9' </dev/urandom | head -c 32
  fi
}

port_in_use() {
  [ "${MINI_A_PORT_CHECK:-1}" = "0" ] && return 1
  (exec 3<>"/dev/tcp/127.0.0.1/$1") 2>/dev/null
}

# ghcopilot model definition: ghc_model_def MODEL TOKEN [decide]
# Decision configs also need a top-level "model" (Mini-A validates it there).
ghc_model_def() {
  local top=""
  [ "${3:-}" = "decide" ] && top="model: $1, "
  printf "(type: ghcopilot, %soptions: (model: %s, timeout: 900000, token: '%s'))" "$top" "$1" "$2"
}

find_token() {
  if [ -z "${GH_TOKEN:-}" ] && [ -n "${GITHUB_TOKEN:-}" ]; then
    GH_TOKEN="$GITHUB_TOKEN"
  fi
  if [ -z "${GH_TOKEN:-}" ] && command -v gh >/dev/null 2>&1; then
    GH_TOKEN="$(gh auth token 2>/dev/null || true)"
  fi
}

# Copilot is only needed when no other model is configured
uses_copilot() {
  [ -z "${OAF_MODEL:-}" ] || [[ "$OAF_MODEL" == *ghcopilot* ]]
}

# --- doctor ------------------------------------------------------------------

doctor() {
  local ok=1 arch img_arch p
  say() { printf '%-8s %s\n' "$1" "$2"; }
  if ! command -v "$DOCKER_BIN" >/dev/null 2>&1; then
    say FAIL "docker not found: install Docker Desktop (https://www.docker.com/products/docker-desktop/)"
    return 1
  fi
  if "$DOCKER_BIN" info >/dev/null 2>&1; then say OK "Docker is running"
  else say FAIL "Docker is installed but not running: start Docker Desktop"; return 1; fi

  case "$(uname -m)" in arm64|aarch64) arch=arm64 ;; *) arch=amd64 ;; esac
  if img_arch="$("$DOCKER_BIN" image inspect --format '{{.Architecture}}' "$IMAGE" 2>/dev/null)"; then
    if [ "$img_arch" = "$arch" ]; then say OK "image $IMAGE ($img_arch)"
    else say WARN "image $IMAGE is $img_arch but this machine is $arch (slow emulation): docker pull $IMAGE"; fi
  else
    say WARN "image $IMAGE not pulled yet (first run pulls it): docker pull $IMAGE"
  fi

  find_token
  if [ -n "${OAF_MODEL:-}" ] && ! uses_copilot; then say OK "OAF_MODEL set (not Copilot)"
  elif [ -n "${GH_TOKEN:-}" ]; then say OK "GitHub token found"
  else say FAIL "no GitHub token: run 'gh auth login' or set GH_TOKEN (or set OAF_MODEL for another provider)"; ok=0; fi
  for p in OAF_MODEL OAF_LC_MODEL OAF_VAL_MODEL OAF_DECIDE_MODEL; do
    if [[ "${!p:-}" == *localhost* || "${!p:-}" == *127.0.0.1* ]]; then
      say WARN "$p points at localhost, which is the container itself: use host.docker.internal"
    fi
  done

  [ -d "$WORK_DIR" ] && say OK "work folder $WORK_DIR -> /work"
  if [ -d "$DATA_DIR" ]; then say OK "data folder $DATA_DIR -> /data"
  else say INFO "data folder $DATA_DIR will be created on first use"; fi

  for p in "$STUDIO_PORT:studio" "$WEB_PORT:web" "$WEBADV_PORT:web-adv" "$MCP_PORT:mcp --http" "$MCP_SAFE_PORT:mcp-safe --http"; do
    if port_in_use "${p%%:*}"; then say WARN "port ${p%%:*} (${p#*:}) is in use; pass onport=<other>"
    else say OK "port ${p%%:*} (${p#*:}) is free"; fi
  done
  [ "$ok" -eq 1 ]
}

# --- mcp-config --------------------------------------------------------------

mcp_config() {
  local name="" safe=0 a server key data ro=""
  for a in "$@"; do
    case "$a" in
      --safe) safe=1 ;;
      wiki=*) name="${a#wiki=}" ;;
      *) name="${name:-$a}" ;;
    esac
  done
  if [ -z "$name" ]; then
    echo "Usage: mini-a-ghc mcp-config wiki=NAME [--safe]" >&2
    exit 1
  fi
  server=mcp; key="mini-a-wiki-$name"
  [ "$safe" -eq 1 ] && { server=mcp-safe; key="mini-a-wiki-safe-$name"; }
  ro=":ro"
  data="$DATA_DIR"
  # Windows paths (Git Bash) as forward-slash drive paths for Docker
  if command -v cygpath >/dev/null 2>&1; then data="$(cygpath -m "$data")"; fi
  cat <<EOF
Claude Desktop (claude_desktop_config.json, inside "mcpServers") or
VS Code (.vscode/mcp.json, inside "servers"):

"$key": {
  "command": "docker",
  "args": ["run", "-i", "--rm", "-v", "$data/wikis:/data/wikis$ro",
           "$IMAGE", "wiki", "$server", "wikiroot=/data/wikis/$name"]
}
EOF
}

# --- main --------------------------------------------------------------------

mount=1
if [ "${1:-}" = "--no-mount" ]; then
  mount=0
  shift
fi

cmd="${1:-}"
case "$cmd" in
  help|help-wiki)
    shift
    args=("$DOCKER_BIN" run --rm)
    if [ -t 0 ] && [ -t 1 ]; then args+=(-ti); fi
    exec "${args[@]}" "$IMAGE" "$cmd" "$@" ;;
  commands|-h|--help) usage; exit 0 ;;
  doctor) doctor; exit $? ;;
  mcp-config) shift; mcp_config "$@"; exit 0 ;;
esac

tty=auto          # auto (-ti at a terminal) | stdin (-i only, for MCP STDIO) | none
data=0            # mount $MINI_A_DATA at /data
data_ro=0
needs_model=1
open_port="" open_path="/"
new=()

# wiki=NAME -> wikiroot=/data/wikis/NAME (and remember that a wiki is used)
expand_wiki() {
  local a
  wiki_used=0
  expanded=()
  for a in "$@"; do
    if [[ "$a" == wiki=* ]]; then
      expanded+=("wikiroot=/data/wikis/${a#wiki=}")
      wiki_used=1
    else
      [[ "$a" == wikiroot=/data/* ]] && wiki_used=1
      expanded+=("$a")
    fi
  done
}

# A wiki without mode=: Mini-A's read-only wiki Q&A preset (explicit flags still win)
wiki_defaults() {
  expanded=("$@")
  if has_arg mode "$@"; then
    has_arg usewiki "$@" || expanded+=(usewiki=true)
  else
    expanded+=(mode=wiki)
  fi
}

case "$cmd" in
  studio)
    shift
    data=1; needs_model=0
    has_arg onport "$@" || set -- "$@" "onport=$STUDIO_PORT"
    has_arg studioallowroots "$@" || set -- "$@" 'studioallowroots=["/data/wikis"]'
    has_arg studiohome "$@" || set -- "$@" "studiohome=/data/studio"
    open_port="$(arg_value onport "$@")"
    new=(wiki studio "$@") ;;
  console|web|web-adv)
    shift
    expand_wiki "$@"
    set -- ${expanded[@]+"${expanded[@]}"}
    if [ "$wiki_used" -eq 1 ]; then
      data=1
      wiki_defaults "$@"; set -- "${expanded[@]}"
    fi
    if [ "$cmd" = "web" ]; then
      has_arg onport "$@" || set -- "$@" "onport=$WEB_PORT"
      open_port="$(arg_value onport "$@")"
    elif [ "$cmd" = "web-adv" ]; then
      has_arg onport "$@" || set -- "$@" "onport=$WEBADV_PORT"
      has_arg webadvanced "$@" || set -- "$@" webadvanced=true
      has_arg webtoken "$@" || set -- "$@" "webtoken=$(random_token)"
      open_port="$(arg_value onport "$@")"
      open_path="/#token=$(arg_value webtoken "$@")"
    fi
    new=("$@") ;;
  mcp|mcp-safe|mcp-ops|mcp-skills)
    shift
    http=""
    rest=()
    while [ "$#" -gt 0 ]; do
      case "$1" in
        --http)
          http=default
          if [[ "${2:-}" =~ ^[0-9]+$ ]]; then http="$2"; shift; fi ;;
        *) rest+=("$1") ;;
      esac
      shift
    done
    expand_wiki ${rest[@]+"${rest[@]}"}
    set -- ${expanded[@]+"${expanded[@]}"}
    if ! has_arg wikiroot "$@"; then
      echo "mini-a-ghc $cmd needs wiki=NAME (a folder in $DATA_DIR/wikis) or wikiroot=/data/..." >&2
      exit 1
    fi
    # MCP servers only need /data (and would leave a pid file in /work)
    data=1; needs_model=0; mount=0
    [ "$cmd" = "mcp-ops" ] || data_ro=1
    if [ -n "$http" ]; then
      if [ "$http" = "default" ]; then
        http=$MCP_PORT
        [ "$cmd" = "mcp-safe" ] && http=$MCP_SAFE_PORT
      fi
      has_arg onport "$@" || set -- "$@" "onport=$http"
      echo "MCP server: http://localhost:$(arg_value onport "$@")/mcp" >&2
    else
      # STDIO: a TTY would corrupt the protocol
      tty=stdin
    fi
    new=(wiki "$cmd" "$@") ;;
  wiki)
    shift
    sub="${1:-}"
    expand_wiki "$@"
    set -- ${expanded[@]+"${expanded[@]}"}
    data=1
    case "$sub" in ""|help|-h|--help|graph|compact|studio|mcp*) needs_model=0 ;; esac
    if [ "$sub" = "studio" ]; then
      has_arg studioallowroots "$@" || set -- "$@" 'studioallowroots=["/data/wikis"]'
      has_arg studiohome "$@" || set -- "$@" "studiohome=/data/studio"
      has_arg onport "$@" || set -- "$@" "onport=$STUDIO_PORT"
      open_port="$(arg_value onport "$@")"
    fi
    new=(wiki "$@") ;;
  batch)
    shift
    if ! has_arg goal "$@" && ! has_arg agent "$@"; then
      echo 'mini-a-ghc batch needs goal="..." (or agent=<file>)' >&2
      exit 1
    fi
    expand_wiki "$@"
    set -- ${expanded[@]+"${expanded[@]}"}
    if [ "$wiki_used" -eq 1 ]; then
      data=1
      wiki_defaults "$@"; set -- "${expanded[@]}"
    fi
    # nobody can answer approval prompts: block those commands instead of waiting
    has_arg shellbatch "$@" || set -- "$@" shellbatch=true
    tty=none
    new=("$@") ;;
  ""|*=*)
    # plain Mini-A arguments (or nothing: interactive console)
    expand_wiki "$@"
    set -- ${expanded[@]+"${expanded[@]}"}
    if [ "$wiki_used" -eq 1 ]; then
      data=1
      wiki_defaults "$@"; set -- "${expanded[@]}"
    fi
    new=(${1+"$@"}) ;;
  bash|sh|list)
    needs_model=0
    [ "$cmd" = "list" ] && needs_model=1
    new=("$@") ;;
  *)
    needs_model=0
    new=("$@") ;;
esac

# --- model and token ---------------------------------------------------------

find_token
if uses_copilot && [ -z "${GH_TOKEN:-}" ]; then
  if [ "$needs_model" -eq 1 ]; then
    echo "No GitHub token: run 'gh auth login' on the host or set GH_TOKEN." >&2
    echo "Using another provider? Set OAF_MODEL (see: mini-a-ghc help). Check your setup: mini-a-ghc doctor" >&2
    exit 1
  fi
fi

if [ -n "${GH_TOKEN:-}" ]; then
  export GH_TOKEN
  if [ -z "${OAF_MODEL:-}" ]; then
    OAF_MODEL="$(ghc_model_def "${MINI_A_MODEL:-gpt-6-luna}" "$GH_TOKEN")"
  fi
  [ -n "${MINI_A_LC_MODEL:-}" ] && [ -z "${OAF_LC_MODEL:-}" ] && OAF_LC_MODEL="$(ghc_model_def "$MINI_A_LC_MODEL" "$GH_TOKEN")"
  [ -n "${MINI_A_VAL_MODEL:-}" ] && [ -z "${OAF_VAL_MODEL:-}" ] && OAF_VAL_MODEL="$(ghc_model_def "$MINI_A_VAL_MODEL" "$GH_TOKEN")"
  [ -n "${MINI_A_DEC_MODEL:-}" ] && [ -z "${OAF_DECIDE_MODEL:-}" ] && OAF_DECIDE_MODEL="$(ghc_model_def "$MINI_A_DEC_MODEL" "$GH_TOKEN" decide)"
fi

# --- docker run --------------------------------------------------------------

args=("$DOCKER_BIN" run --rm)
case "$tty" in
  auto) if [ -t 0 ] && [ -t 1 ]; then args+=(-ti); fi ;;
  stdin) args+=(-i) ;;
esac

for var in OAF_MODEL GH_TOKEN OAF_LC_MODEL OAF_VAL_MODEL OAF_DECIDE_MODEL OAF_MINI_A_LIBS OAF_MINI_A_MODE STUDIO_TOKEN \
           AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_REGION AWS_DEFAULT_REGION AWS_PROFILE; do
  if [ -n "${!var:-}" ]; then
    export "${var?}"
    args+=(-e "$var")
  fi
done

if [ "$mount" -eq 1 ]; then
  args+=(-v "$WORK_DIR:/work" -w /work)
fi
if [ "$data" -eq 1 ]; then
  mkdir -p "$DATA_DIR/wikis" "$DATA_DIR/studio"
  if [ "$data_ro" -eq 1 ]; then args+=(-v "$DATA_DIR:/data:ro")
  else args+=(-v "$DATA_DIR:/data"); fi
fi
# Linux: keep files created in the mounts owned by the host user
if [ "$(uname -s)" = "Linux" ] && { [ "$mount" -eq 1 ] || [ "$data" -eq 1 ]; }; then
  args+=(--user "$(id -u):$(id -g)")
fi

# Publish every onport=N on localhost only
for a in ${new[@]+"${new[@]}"}; do
  if [[ "$a" =~ ^onport=([0-9]+)$ ]]; then
    p="${BASH_REMATCH[1]}"
    if port_in_use "$p"; then
      echo "Port $p is already in use on this machine: stop the other server or pass onport=<other>" >&2
      exit 1
    fi
    args+=(-p "127.0.0.1:$p:$p")
  fi
done

if [ -n "$open_port" ]; then
  url="http://localhost:$open_port$open_path"
  echo "Open $url (Ctrl+C to stop)" >&2
  open_when_ready "$open_port" "$url"
fi

args+=("$IMAGE" ${new[@]+"${new[@]}"})
exec "${args[@]}"
