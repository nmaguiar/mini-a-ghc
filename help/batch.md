# Agent batch mode

Run one goal without interaction, for scripts, scheduled jobs or CI.

```bash
mini-a-ghc batch goal="Summarize this repository in five bullets" useutils=true outfile=/work/summary.md
```

* The current folder is `/work`. Write results there with `outfile=/work/...`.
* Batch runs without a terminal, so its output can be piped or redirected.
* **Exit code:** Mini-A exits 0 even when it gives up on a goal (for example, when the model is unavailable). Check that the `outfile` exists and has content.
* The launcher adds `shellbatch=true`: shell commands that would ask for approval are blocked instead of waiting for an answer.
* State the task plainly. A goal such as "reply with exactly X" can be refused by newer models as an embedded instruction.

## 🧰 Give the agent tools

| Option | Effect |
|--------|--------|
| `useutils=true` | File and document utilities (read files, PDFs, Office documents, images) |
| `useshell=true` | Read-only shell commands |
| `mode=shellrw` | Shell that may change files in `/work` |
| `wiki=NAME` | Answer from a wiki (read-only; add `wikiaccess=rw` to edit it) |
| `mode=internet` | Web search, fetch, time and weather tools |
| `mcp="(cmd: 'ojob mcps/mcp-time.yaml')"` | Any MCP server as tools |

## 🎛️  Presets and limits

* `mode=` applies a preset: `shell`, `shellrw`, `utils`, `shellutils`, `internet`, `news`, `poweruser`, `web-poweruser`, `wiki`, `chatbot`, `web`, `webfull`. Combine them: `mode=shell,utils`.
* `maxsteps=N` caps consecutive steps without progress (default 15).
* `knowledge="..."` and `rules="..."` add context and rules.

## 📄 Agent files

Keep a reusable agent in a Markdown file with YAML front matter, and run it with `agent=`:

```bash
mini-a-ghc --no-mount --agent > reviewer.md          # starter file with every option explained
mini-a-ghc batch agent=/work/reviewer.md goal="Review the changes in /work"
```

The front matter can set `model`, `capabilities`, `tools`, `constraints`, `knowledge`, `youare` and any Mini-A argument under `mini-a`.

## 🐳 Plain Docker and Compose

```bash
docker run --rm -e GH_TOKEN="$(gh auth token)" -v "$(pwd)":/work -w /work nmaguiar/mini-a-ghc \
  goal="Summarize this repository" useutils=true shellbatch=true outfile=/work/summary.md
docker compose run --rm batch goal="Summarize /work" useutils=true shellbatch=true outfile=/work/summary.md
```
