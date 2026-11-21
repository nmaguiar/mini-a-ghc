#!/usr/bin/env bash
# Short commands for the wiki oJobs bundled with the mini-a opack.
#
# Usage: wiki <command> [key=value ...]
#        wiki <command> -jobhelp     # full parameter list of that oJob
set -euo pipefail

OJOB_BIN="${OJOB_BIN:-/openaf/ojob}"
MINI_A_HOME="${MINI_A_HOME:-/openaf/mini-a}"

usage() {
  cat <<'EOF'
Usage: wiki <command> [key=value ...]

Build and maintain:
  hydrate   source=<dir> wikiroot=<dir>     ingest a folder into a wiki and compact it (needs a model)
  ingest    ingestsource=<dir|git|url> wikiroot=<dir>   ingest one source (needs a model)
  absorb    absorbop=plan|show|apply ...    reviewable absorption of sources into a wiki
  dream     wikiroot=<dir>                  reorganize a wiki (backs it up first; needs a model)
  compact   dir=<dir> [apply=true offline=true]   compact the retrieval index (no model)
  ops       operation=<op> wikiroot=<dir>   run a wiki operation (wiki.lint, wiki.reindex, graph.build, ...)

Use:
  query     wikiroot=<dir> [goal="..."]     ask the wiki (console, goal= one-shot, web=true onport=8888)
  graph     dir=<dir> [output=<file.html>]  export an offline HTML graph of the wiki (no model)
  studio    studioallowroots='["/data/wikis"]'   Wiki Studio web UI (port 8890)

Serve over MCP (add onport=<port> for HTTP, otherwise STDIO):
  mcp       wikiroot=<dir>                  read-only wiki knowledge base server
  mcp-ops   wikiroot=<dir>                  wiki maintenance server (lint + read/write)
  mcp-safe  wikiroot=<dir>                  restricted retrieval for untrusted clients
  mcp-skills wikiroot=<dir>                 virtual skill-library server

Add -jobhelp after a command to see all of its parameters.
Step-by-step guide: help-wiki (or: mini-a-ghc help wiki)
EOF
}

has_arg() {
  local key="$1"; shift
  local a
  for a in "$@"; do
    [[ "$a" == "$key="* ]] && return 0
  done
  return 1
}

cmd="${1:-}"
[ "$#" -gt 0 ] && shift

case "$cmd" in
  ""|help|-h|--help) usage; exit 0 ;;
  hydrate)    job="utils/wikiHydrate.yaml" ;;
  ingest)     job="mini-a-ingest.yaml" ;;
  absorb)     job="mini-a-absorb.yaml" ;;
  dream)      job="utils/wikiDream.yaml" ;;
  compact)    job="utils/wikiCompact.yaml" ;;
  ops)        job="utils/wikiOps.yaml" ;;
  query)      job="utils/wikiQuery.yaml" ;;
  graph)      job="utils/wikiGraph.yaml" ;;
  studio)     job="mini-a-wiki-studio.yaml" ;;
  mcp)        job="mcps/mcp-wiki.yaml" ;;
  mcp-ops)    job="mcps/mcp-wiki-ops.yaml" ;;
  mcp-safe)   job="mcps/mcp-wiki-safe.yaml" ;;
  mcp-skills) job="mcps/mcp-skills.yaml" ;;
  *)
    echo "Unknown wiki command: $cmd" >&2
    usage >&2
    exit 1
    ;;
esac

extra=()
if [ "$cmd" = "studio" ]; then
  # In a container there is no browser, and a 127.0.0.1 listener is unreachable from the host
  has_arg studiohost "$@" || extra+=("studiohost=0.0.0.0")
  has_arg openbrowser "$@" || extra+=("openbrowser=false")
fi
if [[ "$cmd" == mcp* ]]; then
  # The MCP jobs only print their help and exit when no label is given
  if [ "$cmd" = "mcp-skills" ]; then
    has_arg label "$@" || extra+=("label=Mini-A skills")
  else
    has_arg label "$@" || extra+=("label=Mini-A wiki")
  fi
fi

exec "$OJOB_BIN" "$MINI_A_HOME/$job" "$@" ${extra[@]+"${extra[@]}"}
