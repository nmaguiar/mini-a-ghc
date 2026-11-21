# Wikis

A Mini-A wiki is a folder of Markdown pages plus a search index. You build it from your sources, try it with Mini-A, keep it tidy, and serve it to other tools over MCP.

**Where wikis live:** `/data/wikis/NAME` in the container. The launcher mounts `~/mini-a` (or `MINI_A_DATA`) at `/data`, so a wiki is a normal folder on your laptop: `~/mini-a/wikis/NAME`. `wiki=NAME` is short for `wikiroot=/data/wikis/NAME`.

---

## 1️⃣  Build a wiki

| Source | Command (laptop launcher) |
|--------|---------------------------|
| The current folder | `mini-a-ghc wiki hydrate source=/work wiki=NAME` |
| One more folder, repo or page | `mini-a-ghc wiki ingest ingestsource=/work/docs wiki=NAME` |
| A git repository | `mini-a-ghc wiki ingest ingestsource=https://github.com/OWNER/REPO wiki=NAME` |
| Preview without writing | add `dryrun=true` (hydrate) or `ingestdryrun=true` (ingest) |

* `hydrate` ingests a whole folder and compacts the index. Run it again after the sources change. `prune=true` also removes pages whose sources are gone.
* Building calls the model in `OAF_MODEL` (Copilot by default), so it needs a token. Texts, Office documents, PDFs and images are supported.
* Narrow the sources with `ingestinclude=docs,src` or `ingestexclude=node_modules,dist`.
* Stop other servers using the same wiki (MCP, web) before `hydrate`: compaction rebuilds the index.

## 2️⃣  Try it

| Where | Command |
|-------|---------|
| Console | `mini-a-ghc console wiki=NAME` |
| One answer | `mini-a-ghc console wiki=NAME goal="How is the project deployed?"` |
| Simple web UI | `mini-a-ghc web wiki=NAME` → http://localhost:12345 |
| Advanced web UI | `mini-a-ghc web-adv wiki=NAME` → http://localhost:12346 (token in the URL) |
| Wiki-only query job | `mini-a-ghc wiki query wiki=NAME goal="..."` |

* With `wiki=` the launcher uses Mini-A's `mode=wiki` preset: read-only wiki answers, no shell and no writes. Add `wikiaccess=rw` to let the agent edit pages, or pass your own `mode=`.
* In the console, `/wiki list`, `/wiki search ...` and `/wiki read ...` browse the pages directly.

## 3️⃣  Wiki Studio (browser)

```bash
mini-a-ghc studio                    # http://localhost:8890
```

* Copy the **access token** printed at startup into the login page. Set `STUDIO_TOKEN` (at least 32 characters) to keep the same token between runs.
* Studio sees every wiki in `~/mini-a/wikis`, and keeps its own state (jobs, backups, audit log) in `~/mini-a/studio`.
* Jobs that build or reorganize wikis use the model, so start Studio with a token if you want them.

## 4️⃣  Maintain it

| Task | Command | Model? |
|------|---------|--------|
| Check links and structure | `mini-a-ghc wiki ops operation=wiki.lint wiki=NAME` | no |
| Rebuild the search index | `mini-a-ghc wiki ops operation=wiki.reindex wiki=NAME wikiaccess=rw confirm=true` | no |
| Reorganize pages (zips a backup first) | `mini-a-ghc wiki dream wiki=NAME` | yes |
| Compact the index | `mini-a-ghc wiki compact dir=/data/wikis/NAME apply=true offline=true` | no |
| Offline HTML graph | `mini-a-ghc wiki graph dir=/data/wikis/NAME output=/data/wikis/NAME-graph.html` | no |
| Reviewable bulk changes | `mini-a-ghc wiki absorb absorbop=plan ...` then `absorbop=apply` | yes |

Operations that change the wiki (`wiki ops`) need `wikiaccess=rw confirm=true`; without them they refuse with `Requires a writable primary wiki` or `Mutation requires confirm=true`.

## 5️⃣  Serve it over MCP

| Server | Command | For |
|--------|---------|-----|
| `mcp` | `mini-a-ghc mcp wiki=NAME` | Your own assistants: read-only search and pages |
| `mcp-safe` | `mini-a-ghc mcp-safe wiki=NAME` | Untrusted clients: restricted, bounded retrieval |
| `mcp-ops` | `mini-a-ghc mcp-ops wiki=NAME` | Maintenance: lint plus read/write |
| `mcp-skills` | `mini-a-ghc mcp-skills wiki=NAME` | A wiki of skills exposed as a skill library |

Add `--http` for an HTTP server instead of STDIO. See `help mcp` for client configuration.

---

## 🔎 All parameters

Every wiki command lists its parameters with `-jobhelp`, for example `mini-a-ghc wiki hydrate -jobhelp`. Run `mini-a-ghc wiki` for the command summary.

## 🐳 Plain Docker equivalents

```bash
docker run --rm -ti -e GH_TOKEN="$(gh auth token)" -v "$(pwd)":/work -v "$HOME/mini-a":/data \
  nmaguiar/mini-a-ghc wiki hydrate source=/work wikiroot=/data/wikis/NAME
docker run --rm -ti -e GH_TOKEN="$(gh auth token)" -v "$HOME/mini-a":/data \
  nmaguiar/mini-a-ghc mode=wiki wikiroot=/data/wikis/NAME
docker run --rm -ti -p 127.0.0.1:8890:8890 -v "$HOME/mini-a/wikis":/data/wikis -v "$HOME/mini-a/studio":/data/studio \
  nmaguiar/mini-a-ghc wiki studio 'studioallowroots=["/data/wikis"]' studiohome=/data/studio
```

## 🩹 Troubleshooting

| Message | Fix |
|---------|-----|
| `Choose a dedicated data directory as allowroot` | The wikis folder must exist and sit under `/data`: mount it at `/data/wikis` (the launcher does this) |
| `no V2 serving generation exists ... using legacy retrieval` | Harmless. Run `wiki ops operation=wiki.reindex wiki=NAME wikiaccess=rw confirm=true`, or rebuild with `hydrate`, to enable the faster index |
| Permission denied writing the wiki on Linux | Add `--user "$(id -u):$(id -g)"` (the launcher does this) |
| `Requires a writable primary wiki` / `Mutation requires confirm=true` | Add `wikiaccess=rw confirm=true` to `wiki ops` |
| `Port ... is already in use` | Another server is on that port: pass `onport=<other>` |
| Indexing is slow on macOS or Windows | Bind mounts are slower there; on Windows keep big wikis inside the WSL filesystem |
