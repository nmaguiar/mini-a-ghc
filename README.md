# mini-a-ghc

`mini-a-ghc` is a container image that combines:

- [`openaf/mini-a`](https://github.com/openaf/mini-a) (the Mini-A agent runtime), and
- [`ghcopilot`](https://github.com/openaf/openaf-opacks/tree/master/ghcopilot) (OpenAF provider for GitHub Copilot models).

This image is designed so you can run Mini-A with a GitHub Copilot-backed `OAF_MODEL` out of the box.

## Image security scans

[![.github/sec-build.svg](.github/sec-build.svg)](.github/sec-build.md)<br>
[![.github/sec-latest.svg](.github/sec-latest.svg)](.github/sec-latest.md)<br>

## What this image adds on top of `openaf/mini-a`

Compared to the base `openaf/mini-a:deb-t8` image, this image:

1. Installs `gh` (GitHub CLI).
2. Installs GitHub Copilot CLI.
3. Installs the OpenAF `ghcopilot` opack.
4. Installs `colorFormats.yaml` and shell aliases for common OpenAF helpers.
5. Sets `OAF_MINI_A_LIBS="@ghcopilot/ghcopilot.js"` so the provider is loaded automatically.
6. Uses a custom entrypoint that:
   - conditionally extracts a token from `OAF_MODEL` with `oafp`,
   - logs `gh` in non-interactively when `OAF_MODEL` uses `ghcopilot`,
   - removes the temporary token file,
   - optionally runs `INIT_SCRIPT`,
   - starts Mini-A from `/home/openaf`.

## Prerequisites

- Docker (or compatible runtime).
- A GitHub account with Copilot access.
- A GitHub token that can be used by the Copilot CLI (for example from `gh auth token` on a machine where `gh` is already authenticated).

### If `gh` is not available

You can create a token directly in the GitHub web UI:

1. Open GitHub `Settings`.
2. Go to `Developer settings` -> `Personal access tokens`.
3. Create a new token:
   - Prefer `Fine-grained tokens` and grant only the repositories/organizations you need.
   - If your organization or workflow requires it, use `Tokens (classic)` instead.
4. Copy the token once GitHub shows it and store it securely.
5. Export it before starting the container:

```bash
export GH_TOKEN="<your-token>"
```

GitHub's current token-management docs:

- Fine-grained and classic token creation: <https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens>

## Quick start: reuse your host `gh` login

Mount your `gh` config folder and the container configures Copilot for you (no `GH_TOKEN` or `OAF_MODEL` needed):

```bash
gh auth login --insecure-storage   # once, on the host
docker run --rm -ti -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh -v "$(pwd)":/work -w /work nmaguiar/mini-a-ghc
```

`--insecure-storage` keeps the token in `~/.config/gh/hosts.yml`; a token held in the macOS Keychain cannot be read from inside a container. Set `-e MINI_A_MODEL=gpt-4.1` to change the model (default `gpt-5-mini`).

## Important `OAF_MODEL` notes

Mini-A reads model/provider configuration from `OAF_MODEL`.

For `ghcopilot`, the token should be set under `options.token`. This image entrypoint also reads `options.token` from `OAF_MODEL` before startup to authenticate `gh`.

### Recommended `OAF_MODEL`

```bash
export GH_TOKEN="<your-token>"
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-5-mini, timeout: 900000, token: '$GH_TOKEN'))"
```

> Tip: keep timeout high for agent workloads (`900000` ms = 15 minutes).

More examples (including JSON/YAML-style definitions) are in [`OAF_MODEL.md`](OAF_MODEL.md).

### Built-in help (other providers)

The image ships a rendered usage guide ([`USAGE.md`](USAGE.md)) with ready-to-copy `OAF_MODEL` setups for GitHub Copilot, AWS Bedrock, OpenAI (and OpenAI-compatible APIs), Anthropic, Google Gemini and Ollama:

```bash
docker run --rm -ti nmaguiar/mini-a-ghc help
mini-a-ghc help                              # same, through the laptop launcher (no token needed)
```

Inside a container shell, `help` shows the same guide.

## Quick start (laptop launcher)

`mini-a-ghc.sh` wraps `docker run` for you. It picks up your token from `GH_TOKEN` or `gh auth token`, builds a default `OAF_MODEL`, mounts the current folder at `/work` (the container starts there), and passes `GH_TOKEN` so `gh` works inside the container.

```bash
curl -fsSLo ~/bin/mini-a-ghc https://raw.githubusercontent.com/nmaguiar/mini-a-ghc/main/mini-a-ghc.sh && chmod +x ~/bin/mini-a-ghc

cd my-project
mini-a-ghc                                   # interactive, current folder mounted
mini-a-ghc goal="fix the failing tests" useshell=true
mini-a-ghc --no-mount onport=12345           # server/headless: no host folder
mini-a-ghc bash                              # shell with gh and the mounted folder
```

Variables: `GH_TOKEN`, `OAF_MODEL`, `MINI_A_MODEL` (default `gpt-5-mini`), `MINI_A_DIR` (folder to mount), `MINI_A_IMAGE`.

Notes:

- The container starts in its current working directory, so `-w /work` (or the `WORKDIR` variable) is honored.
- On Linux the launcher runs with `--user $(id -u):$(id -g)` so files created in the mounted folder belong to you.
- If `GH_TOKEN` or `GITHUB_TOKEN` is set, the entrypoint skips `gh auth login` because `gh` uses the variable directly.
- With `useshell=true` the agent can modify anything in the mounted folder. Mount only what you want it to change.

## Quick start (plain Docker)

Run interactive Mini-A console:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  nmaguiar/mini-a-ghc
```

Run one-off goal:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  -v "$(pwd)":/work -w /work \
  nmaguiar/mini-a-ghc \
  goal="Summarize this repository and propose next refactors" useshell=true
```

Run web UI:

```bash
docker run --rm -d \
  -e OAF_MODEL="$OAF_MODEL" \
  -p 12345:12345 \
  nmaguiar/mini-a-ghc onport=12345
```

Then open: <http://localhost:12345>

## Running an oJob

Set `OJOB` to a job file or ZIP inside the container to use the base OpenAF
entrypoint. It passes any arguments after the image name to the job and uses
the container's working directory. This mode skips Mini-A's GitHub login and
`INIT_SCRIPT` hook.

```bash
docker run --rm \
  -e OJOB=/work/main.yaml \
  -v "$(pwd)":/work -w /work \
  nmaguiar/mini-a-ghc message="hello from Docker"
```

## Wiki commands

The image puts a `wiki` command on the `PATH` with short names for the wiki oJobs bundled with Mini-A:

| Command | oJob |
|---------|------|
| `wiki hydrate` | `utils/wikiHydrate.yaml` |
| `wiki ingest` | `mini-a-ingest.yaml` |
| `wiki absorb` | `mini-a-absorb.yaml` |
| `wiki dream` | `utils/wikiDream.yaml` |
| `wiki query` | `utils/wikiQuery.yaml` |
| `wiki ops` | `utils/wikiOps.yaml` |
| `wiki compact` | `utils/wikiCompact.yaml` |
| `wiki graph` | `utils/wikiGraph.yaml` |
| `wiki studio` | `mini-a-wiki-studio.yaml` |
| `wiki mcp`, `mcp-ops`, `mcp-safe`, `mcp-skills` | `mcps/mcp-wiki.yaml`, `mcp-wiki-ops.yaml`, `mcp-wiki-safe.yaml`, `mcp-skills.yaml` |

Arguments are passed straight to the oJob, and `wiki <command> -jobhelp` lists them. Run `wiki` with no command for a summary. Two defaults are added for containers: `wiki studio` uses `studiohost=0.0.0.0 openbrowser=false`, and the MCP servers get a `label` (they exit without one). Explicit values override both.

```bash
# build a wiki from the current folder, then query it
docker run --rm -ti -e OAF_MODEL -e GH_TOKEN \
  -v "$(pwd)":/data/src -v "$HOME/wikis":/data/wikis \
  nmaguiar/mini-a-ghc wiki hydrate source=/data/src wikiroot=/data/wikis/myproject

docker run --rm -ti -e OAF_MODEL -e GH_TOKEN -v "$HOME/wikis":/data/wikis \
  nmaguiar/mini-a-ghc wiki query wikiroot=/data/wikis/myproject goal="How is the project built?"

# Wiki Studio on http://localhost:8890 (token printed at startup)
docker run --rm -ti -p 127.0.0.1:8890:8890 -v "$HOME/wikis":/data/wikis \
  nmaguiar/mini-a-ghc wiki studio studioallowroots='["/data/wikis"]'

# read-only MCP server on http://localhost:12346/mcp
docker run --rm -d -p 12346:12346 -v "$HOME/wikis":/data/wikis:ro \
  nmaguiar/mini-a-ghc wiki mcp wikiroot=/data/wikis/myproject onport=12346
```

Wiki Studio only accepts `/data` or a subfolder as an allowed root, so mount wikis under `/data`.

On Linux hosts, add `--user "$(id -u):$(id -g)"` to commands that write wikis (hydrate, ingest, absorb, dream) so the container can write to the mounted folder.

## Passing extra Mini-A configuration

Because this image ultimately executes `mini-a`, you can pass the same parameters described in `openaf/mini-a` docs, for example:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  nmaguiar/mini-a-ghc \
  goal="What time is it in Tokyo?" \
  mcp="(cmd: 'ojob mcps/mcp-time.yaml')"
```

If the first argument is an executable available in the container, the entrypoint runs it directly instead of launching `mini-a`. For example:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  nmaguiar/mini-a-ghc \
  bash
```

Common options:

- `useshell=true` to allow shell commands.
- `usestream=true` for streaming output.
- `rules="..."` to provide runtime rules.
- `knowledge="..."` to inject reference knowledge.

## Convenience commands in the container

The image also adds a few shell conveniences:

- `mini-a` as an alias for `/openaf/opack exec mini-a`
- `list` as a shortcut to print available LLM models
- `help` to show the usage guide with provider setup instructions
- `wiki <command>` for the bundled wiki oJobs (see [Wiki commands](#wiki-commands))
- `oafptab`, `oaf-light-theme`, and `oaf-dark-theme` for OpenAF output formatting
- `PATH` includes `/openaf` and `/openaf/ojobs`

You can also run the model listing directly through the entrypoint:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  /mini-a-ghc list
```

## Optional initialization hook

If you set `INIT_SCRIPT`, the entrypoint executes that script right before `opack exec mini-a`.

- `INIT_SCRIPT` should point to a script file available inside the container.
- The script runs as the `openaf` user, from `/home/openaf`.
- The script is only executed when the container is launching Mini-A. It is not executed when the container is used to run some other command directly.
- If the file does not exist, startup fails with an error.

Example:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  -e INIT_SCRIPT=/work/init.sh \
  -v "$(pwd)":/work -w /work \
  nmaguiar/mini-a-ghc
```

Example `init.sh` to install `kubectl`:

```bash
#!/usr/bin/env bash
set -euo pipefail

arch="$(uname -m)"
case "$arch" in
  x86_64) kubectl_arch="amd64" ;;
  aarch64|arm64) kubectl_arch="arm64" ;;
  *) echo "Unsupported architecture: $arch" >&2; exit 1 ;;
esac

mkdir -p "$HOME/.local/bin"
curl -fsSLo "$HOME/.local/bin/kubectl" "https://dl.k8s.io/release/$(curl -fsSL https://dl.k8s.io/release/stable.txt)/bin/linux/${kubectl_arch}/kubectl"
chmod +x "$HOME/.local/bin/kubectl"
export PATH="$HOME/.local/bin:$PATH"
```

Example `init.sh` to install the AWS CLI:

```bash
#!/usr/bin/env bash
set -euo pipefail

arch="$(uname -m)"
case "$arch" in
  x86_64) aws_arch="x86_64" ;;
  aarch64|arm64) aws_arch="aarch64" ;;
  *) echo "Unsupported architecture: $arch" >&2; exit 1 ;;
esac

mkdir -p "$HOME/.local/bin"
curl -fsSLo /tmp/awscliv2.zip "https://awscli.amazonaws.com/awscli-exe-linux-${aws_arch}.zip"
cd /tmp
unzip -q awscliv2.zip
./aws/install --bin-dir "$HOME/.local/bin" --install-dir "$HOME/.local/aws-cli" --update
export PATH="$HOME/.local/bin:$PATH"
```

After the hook runs, Mini-A starts with those tools available in the container session.

## Authentication flow in this image

At startup, entrypoint behavior is:

1. If `OAF_MODEL` contains `ghcopilot`, `oafp` reads `options.token` into `/tmp/token.txt`.
2. `gh auth login --with-token` is executed.
3. `/tmp/token.txt` is removed.
4. The working directory is set to `/home/openaf`.
5. If `INIT_SCRIPT` is set, that script is executed.
6. Mini-A starts, or the container runs the explicit command you passed.

If startup fails at authentication, validate token presence in `OAF_MODEL` (see recommended format above).

## Troubleshooting

### `SDK protocol version mismatch`

If you see an error similar to:

- `SDK protocol version mismatch: SDK expects version X, but server reports version Y`

your Copilot CLI version is newer than the Java SDK bundled by `ghcopilot`.

Workarounds (from upstream `ghcopilot` docs):

- Use a compatible Copilot CLI version.
- Point provider config to a compatible binary via `options.cliPath`.
- Update to a newer `ghcopilot` opack when available.

### `copilot` binary not found

This image installs Copilot CLI during build, but if you build custom derivatives and remove it accidentally, ensure `copilot --version` works in the container.

### `gh auth login` fails

- Confirm your token is valid and not expired.
- Confirm `OAF_MODEL` includes `options.token`.
- If you are not using `ghcopilot`, no `gh` login is attempted at startup.

### `INIT_SCRIPT` fails

- Confirm `INIT_SCRIPT` points to a file that exists inside the container.
- Confirm the script can be executed by `bash`.
- Confirm the script does not require `sudo` or root-only write access.
- Confirm any mounted paths used by the script are available in the container.

## Example: use host-provided token dynamically

If you already use `gh` on the host:

```bash
export GH_TOKEN="$(gh auth token)"
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"

docker run --rm -ti -e OAF_MODEL="$OAF_MODEL" nmaguiar/mini-a-ghc
```

## Security notes

- Treat `OAF_MODEL` as secret material when it embeds tokens.
- Prefer short-lived tokens where possible.
- Do not commit token-bearing `OAF_MODEL` values to source control.
- In CI/CD, inject `OAF_MODEL` through secure secret stores.

## References

- Mini-A: <https://mini-a.ai>
- Mini-A project: <https://github.com/openaf/mini-a>
- Mini-A usage/docs: <https://github.com/openaf/mini-a/blob/master/USAGE.md>
- `ghcopilot` opack: <https://github.com/openaf/openaf-opacks/tree/master/ghcopilot>
