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

## Quick start

Run interactive Mini-A console:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc
```

Run one-off goal:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  -v "$(pwd)":/work -w /work \
  openaf/mini-a-ghc \
  goal="Summarize this repository and propose next refactors" useshell=true
```

Run web UI:

```bash
docker run --rm -d \
  -e OAF_MODEL="$OAF_MODEL" \
  -p 12345:12345 \
  openaf/mini-a-ghc onport=12345
```

Then open: <http://localhost:12345>

## Passing extra Mini-A configuration

Because this image ultimately executes `mini-a`, you can pass the same parameters described in `openaf/mini-a` docs, for example:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc \
  goal="What time is it in Tokyo?" \
  mcp="(cmd: 'ojob mcps/mcp-time.yaml')"
```

If the first argument is an executable available in the container, the entrypoint runs it directly instead of launching `mini-a`. For example:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc \
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
- `oafptab`, `oaf-light-theme`, and `oaf-dark-theme` for OpenAF output formatting
- `PATH` includes `/openaf` and `/openaf/ojobs`

You can also run the model listing directly through the entrypoint:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc list
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
  openaf/mini-a-ghc
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

docker run --rm -ti -e OAF_MODEL="$OAF_MODEL" openaf/mini-a-ghc
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
