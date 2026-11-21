# mini-a-ghc usage

Mini-A agent runtime with GitHub Copilot support built in.

**Quick start with GitHub Copilot (uses your host `gh` login):**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh -v "$(pwd)":/work -w /work nmaguiar/mini-a-ghc'}}}

Other providers: pick one below, export `OAF_MODEL` on the host and pass `-e OAF_MODEL` instead.

> Treat `OAF_MODEL` as a secret when it embeds keys or tokens. Keep `timeout: 900000` (15 minutes) for agent workloads.

---

## 🐙 GitHub Copilot (ghcopilot)

Needs a GitHub account with Copilot access. The simplest way is to mount your host `gh` login: the container runs `gh auth token` itself and configures Copilot for you.

```bash
docker run --rm -ti -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh nmaguiar/mini-a-ghc
```

* Choose the model with `-e MINI_A_MODEL=gpt-4.1` (default `gpt-5-mini`). Use the `list` command to see the models your Copilot plan allows.
* Requires `gh auth login` on the host. If it reports no token found, `gh` is keeping it in the macOS Keychain, which a container cannot read: run `gh auth login --insecure-storage` once, or use the `GH_TOKEN` option below.
* This only applies when `OAF_MODEL`, `GH_TOKEN` and `GITHUB_TOKEN` are not set.

Or pass the token explicitly (get one with `gh auth token` or from GitHub Settings → Developer settings → Personal access tokens):

```bash
export GH_TOKEN="$(gh auth token)"
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-5-mini, timeout: 900000, token: '$GH_TOKEN'))"
docker run --rm -ti -e OAF_MODEL -e GH_TOKEN nmaguiar/mini-a-ghc
```

* If `GH_TOKEN` or `GITHUB_TOKEN` is passed, `gh` uses it directly. Otherwise the entrypoint logs `gh` in with `options.token`.

---

## ☁️  AWS Bedrock

Uses the standard AWS credentials (environment variables or a mounted `~/.aws`). The model must be enabled in the Bedrock console for the region.

```bash
export OAF_MODEL="(type: bedrock, options: (region: eu-west-1, model: 'global.anthropic.claude-sonnet-4-6', temperature: 0, params: (max_tokens: 65535)), timeout: 900000)"
docker run --rm -ti \
  -e OAF_MODEL \
  -e OAF_MINI_A_LIBS="@AWS/aws.js,@ghcopilot/ghcopilot.js" \
  -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN \
  nmaguiar/mini-a-ghc
```

* `OAF_MINI_A_LIBS` must include `@AWS/aws.js` so the Bedrock provider is loaded.
* With a profile instead of keys: `-v ~/.aws:/home/openaf/.aws:ro -e AWS_PROFILE=myprofile`.

---

## 🤖 OpenAI

```bash
export OAF_MODEL="(type: openai, model: gpt-5-mini, key: 'sk-...', timeout: 900000, temperature: 1)"
docker run --rm -ti -e OAF_MODEL nmaguiar/mini-a-ghc
```

Any OpenAI-compatible API works by adding `url:`, for example:

* Groq: `(type: openai, key: '...', url: 'https://api.groq.com/openai', model: openai/gpt-oss-120b, timeout: 900000, temperature: 0)`
* Mistral: `(type: openai, key: '...', url: 'https://api.mistral.ai', model: magistral-medium-latest, timeout: 900000, temperature: 0, noSystem: false)`
* GitHub Models: `(type: openai, url: 'https://models.github.ai/inference', model: openai/gpt-5-nano, key: '$GH_TOKEN', timeout: 900000, temperature: 1, apiVersion: '')`

---

## 🧠 Anthropic

```bash
export OAF_MODEL="(type: anthropic, key: 'sk-ant-...', model: claude-sonnet-4-5-20250929, timeout: 900000, temperature: 0, params: (max_tokens: 64000))"
docker run --rm -ti -e OAF_MODEL nmaguiar/mini-a-ghc
```

---

## 💎 Google Gemini

Get a key from Google AI Studio.

```bash
export OAF_MODEL="(type: gemini, model: gemini-2.5-flash, key: '...', timeout: 900000, temperature: 0)"
docker run --rm -ti -e OAF_MODEL nmaguiar/mini-a-ghc
```

---

## 🦙 Ollama (local models)

The container reaches an Ollama server on the host through `host.docker.internal`.

```bash
export OAF_MODEL="(type: ollama, model: 'gpt-oss:20b', url: 'http://host.docker.internal:11434', timeout: 900000)"
docker run --rm -ti -e OAF_MODEL --add-host=host.docker.internal:host-gateway nmaguiar/mini-a-ghc
```

* `--add-host` is only needed on Linux. Docker Desktop provides `host.docker.internal` already.
* Pull the model first on the host: `ollama pull gpt-oss:20b`.

---

## 💸 Optional low-cost model

Set `OAF_LC_MODEL` (same format as `OAF_MODEL`) and Mini-A sends simpler steps to the cheaper model:

```bash
export OAF_LC_MODEL="(type: ghcopilot, options: (model: gpt-4.1, timeout: 900000, token: '$GH_TOKEN'))"
docker run --rm -ti -e OAF_MODEL -e OAF_LC_MODEL -e GH_TOKEN nmaguiar/mini-a-ghc
```

---

## 📚 Wikis

`wiki COMMAND` runs the wiki oJobs bundled with Mini-A. Add `-jobhelp` after a command to list all of its parameters. `DIR`, `FILE`, `SOURCE` and `PORT` are placeholders. Mount your folders under `/data` so the paths work with every command (Wiki Studio only accepts `/data` or a subfolder).

| Command | What it does |
|---------|--------------|
| `wiki hydrate source=DIR wikiroot=DIR` | Builds a wiki from a folder, then compacts it (uses the model) |
| `wiki ingest ingestsource=SOURCE wikiroot=DIR` | Ingests one source into a wiki (uses the model) |
| `wiki absorb absorbop=plan absorbspec=FILE wikiroot=DIR` | Plans or applies a reviewable absorption of sources |
| `wiki dream wikiroot=DIR` | Reorganizes a wiki after zipping a backup (uses the model) |
| `wiki query wikiroot=DIR goal="..."` | Asks the wiki (omit `goal` for the console, `web=true onport=8888` for the web UI) |
| `wiki ops operation=wiki.lint wikiroot=DIR` | Runs a maintenance operation (`wiki.reindex`, `graph.build`, ...) |
| `wiki compact dir=DIR` | Previews index compaction (`apply=true offline=true` to apply) |
| `wiki graph dir=DIR output=FILE.html` | Exports an offline HTML graph of the wiki |
| `wiki studio studioallowroots='["/data/wikis"]'` | Starts the Wiki Studio web UI on port 8890 |
| `wiki mcp wikiroot=DIR onport=PORT` | Serves a wiki over MCP (also `mcp-ops`, `mcp-safe`, `mcp-skills`) |

Build a wiki from the current folder and ask it a question:

```bash
docker run --rm -ti -e OAF_MODEL -e GH_TOKEN -v "$(pwd)":/data/src -v "$HOME/wikis":/data/wikis nmaguiar/mini-a-ghc \
  wiki hydrate source=/data/src wikiroot=/data/wikis/myproject
docker run --rm -ti -e OAF_MODEL -e GH_TOKEN -v "$HOME/wikis":/data/wikis nmaguiar/mini-a-ghc \
  wiki query wikiroot=/data/wikis/myproject goal="How is the project built?"
```

Wiki Studio (the access token is printed at startup; set `STUDIO_TOKEN` to choose one):

```bash
docker run --rm -ti -p 127.0.0.1:8890:8890 -v "$HOME/wikis":/data/wikis nmaguiar/mini-a-ghc \
  wiki studio studioallowroots='["/data/wikis"]'
```

Serve a wiki read-only over MCP at `http://localhost:12346/mcp`:

```bash
docker run --rm -d -p 12346:12346 -v "$HOME/wikis":/data/wikis:ro nmaguiar/mini-a-ghc \
  wiki mcp wikiroot=/data/wikis/myproject onport=12346
```

* In a container, `wiki studio` listens on all interfaces and does not try to open a browser. The MCP servers get a default `label`.
* Hydrate, ingest, dream and semantic graph builds call the model in `OAF_MODEL`. Graph export, compaction, lint and the MCP servers do not.
* With Copilot, `-v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh` can replace `-e OAF_MODEL -e GH_TOKEN` in these commands.
* On Linux hosts, add `--user "$(id -u):$(id -g)"` to commands that write wikis so the container can write to the mounted folder.

---

## 🧰 Container commands

| Command | What it does |
|---------|--------------|
| (no arguments) | Starts the interactive Mini-A console |
| `help` | Shows this help |
| `list` | Lists the models available to the configured `OAF_MODEL` |
| `wiki COMMAND` | Runs a bundled wiki oJob (see Wikis above) |
| `goal="..." useshell=true` | Runs a one-shot goal (any Mini-A parameter works) |
| `onport=12345` | Starts the Mini-A web UI (publish it with `-p 12345:12345`) |
| `bash` (or any executable) | Runs that command instead of Mini-A |

Environment variables:

| Variable | Purpose |
|----------|---------|
| `OAF_MODEL` | Main model definition (required to use Mini-A) |
| `OAF_LC_MODEL` | Optional low-cost model definition |
| `OAF_MINI_A_LIBS` | Provider libraries to load (default `@ghcopilot/ghcopilot.js`) |
| `GH_TOKEN` | GitHub token for `gh` and Copilot |
| `GH_CONFIG_DIR` | Folder with a mounted `gh` login. Copilot is configured automatically when `OAF_MODEL` is unset |
| `MINI_A_MODEL` | Copilot model for that automatic setup (default `gpt-5-mini`) |
| `INIT_SCRIPT` | Script to run before Mini-A starts (for example to install extra tools) |
| `OJOB` | Run an oJob instead of Mini-A |
| `STUDIO_TOKEN` | Wiki Studio access token (at least 32 characters) |

More: https://mini-a.ai and https://github.com/nmaguiar/mini-a-ghc
