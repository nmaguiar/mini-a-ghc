# Reference

## 💻 Laptop launcher (`mini-a-ghc`)

| Command | What it does |
|---------|--------------|
| (no command) / `console` | Interactive Mini-A console |
| `web`, `web-adv` | Simple web UI (port 12345) / Advanced web UI (port 12346) |
| `studio` | Wiki Studio (port 8890) |
| `wiki <cmd> ...` | Any wiki command (`help wiki`) |
| `mcp`, `mcp-safe`, `mcp-ops`, `mcp-skills` | MCP servers, STDIO or `--http [PORT]` (`help mcp`) |
| `mcp-config wiki=NAME [--safe]` | Prints an MCP client snippet |
| `batch goal="..."` | Non-interactive agent run (`help batch`) |
| `doctor` | Checks Docker, the image, the token, folders and ports |
| `help [topic]`, `help-wiki` | This help (no token needed) |
| `commands` | Short launcher usage |
| `list` | Models available to the configured provider |
| `bash`, any executable | Runs it in the container |
| `key=value ...` | Plain Mini-A arguments |

Launcher options: `--no-mount` (macOS/Linux) or `-NoMount` (PowerShell) skips mounting the current folder. `wiki=NAME` means `wikiroot=/data/wikis/NAME`. Every `onport=N` is published on `127.0.0.1:N`.

## 🧰 Container commands (plain Docker or a container shell)

| Command | What it does |
|---------|--------------|
| (no arguments) | Starts the interactive Mini-A console |
| `help [topic]`, `help-wiki` | Shows this help |
| `list` | Lists the models available to the configured `OAF_MODEL` |
| `wiki COMMAND` | Runs a bundled wiki oJob |
| `goal="..." useshell=true` | Runs a one-shot goal (any Mini-A parameter works) |
| `onport=12345` | Starts the Mini-A web UI (publish it with `-p 127.0.0.1:12345:12345`) |
| `bash` (or any executable) | Runs that command instead of Mini-A |

Container shell extras: `mini-a` (alias for `opack exec mini-a`), `oafptab`, `oaf-light-theme`, `oaf-dark-theme`.

## 📁 Folders

| In the container | Launcher mounts | Used for |
|------------------|-----------------|----------|
| `/work` | the current folder (`MINI_A_DIR`) | Files the agent reads and writes, `outfile=` |
| `/data/wikis` | `~/mini-a/wikis` (`MINI_A_DATA`) | Wikis |
| `/data/studio` | `~/mini-a/studio` | Wiki Studio state, jobs, backups |

## 🔧 Environment variables

| Variable | Purpose |
|----------|---------|
| `OAF_MODEL` | Main model definition (`help models`). Built for Copilot automatically when unset |
| `OAF_LC_MODEL` | Optional low-cost model definition |
| `OAF_VAL_MODEL` | Optional validation model definition (deep research) |
| `OAF_DECIDE_MODEL` | Optional decision model definition |
| `OAF_MINI_A_LIBS` | Provider libraries to load (default `@ghcopilot/ghcopilot.js`) |
| `GH_TOKEN` | GitHub token for `gh` and Copilot (the launcher reads it from `gh auth token`) |
| `GH_CONFIG_DIR` | Folder with a mounted `gh` login |
| `MINI_A_MODEL` | Copilot model for the automatic setup (default `gpt-6-luna`) |
| `MINI_A_LC_MODEL`, `MINI_A_VAL_MODEL`, `MINI_A_DEC_MODEL` | Copilot model names for the optional roles |
| `INIT_SCRIPT` | Script to run before Mini-A starts (for example to install extra tools) |
| `OJOB` | Run an oJob instead of Mini-A |
| `STUDIO_TOKEN` | Wiki Studio access token (at least 32 characters) |

Launcher only: `MINI_A_DIR`, `MINI_A_DATA`, `MINI_A_IMAGE`, `MINI_A_NO_BROWSER=1`.
