# mini-a-ghc

`mini-a-ghc` is a container image that combines:

- [`openaf/mini-a`](https://github.com/openaf/mini-a) (the Mini-A agent runtime), and
- [`ghcopilot`](https://github.com/openaf/openaf-opacks/tree/master/ghcopilot) (OpenAF provider for GitHub Copilot models).

This image is designed so you can run Mini-A with a GitHub Copilot-backed `OAF_MODEL` out of the box.

## What this image adds on top of `openaf/mini-a`

Compared to the base `openaf/mini-a:deb-t8` image, this image:

1. Installs `gh` (GitHub CLI).
2. Installs GitHub Copilot CLI.
3. Installs the OpenAF `ghcopilot` opack.
4. Sets `OAF_MINI_A_LIBS="@ghcopilot/ghcopilot.js"` so the provider is loaded automatically.
5. Uses a custom entrypoint that:
   - extracts a token from `OAF_MODEL` with `oafp`,
   - logs `gh` in non-interactively,
   - removes the temporary token file,
   - starts Mini-A.

## Prerequisites

- Docker (or compatible runtime).
- A GitHub account with Copilot access.
- A GitHub token that can be used by the Copilot CLI (for example from `gh auth token` on a machine where `gh` is already authenticated).

## Important `OAF_MODEL` notes

Mini-A reads model/provider configuration from `OAF_MODEL`.

For `ghcopilot`, upstream provider docs define the token under `options.token`. This image entrypoint also extracts `token` from `OAF_MODEL` before startup to authenticate `gh`.

To keep both expectations satisfied, use **both** `token` (top-level) and `options.token` with the same value.

### Recommended `OAF_MODEL`

```bash
export GH_TOKEN="<your-token>"
export OAF_MODEL="(type: ghcopilot, token: '$GH_TOKEN', options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"
```

> Tip: keep timeout high for agent workloads (`900000` ms = 15 minutes).

More examples (including JSON/YAML-style definitions) are in [`docs/OAF_MODEL.md`](docs/OAF_MODEL.md).

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

Common options:

- `useshell=true` to allow shell commands.
- `usestream=true` for streaming output.
- `rules="..."` to provide runtime rules.
- `knowledge="..."` to inject reference knowledge.

## Authentication flow in this image

At startup, entrypoint behavior is:

1. `oafp` reads `token` from `OAF_MODEL` into `/tmp/token.txt`.
2. `gh auth login --with-token` is executed.
3. `/tmp/token.txt` is removed.
4. Mini-A starts.

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
- Confirm `OAF_MODEL` includes top-level `token`.
- Confirm `options.token` is also set for the provider runtime.

## Example: use host-provided token dynamically

If you already use `gh` on the host:

```bash
export GH_TOKEN="$(gh auth token)"
export OAF_MODEL="(type: ghcopilot, token: '$GH_TOKEN', options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"

docker run --rm -ti -e OAF_MODEL="$OAF_MODEL" openaf/mini-a-ghc
```

## Security notes

- Treat `OAF_MODEL` as secret material when it embeds tokens.
- Prefer short-lived tokens where possible.
- Do not commit token-bearing `OAF_MODEL` values to source control.
- In CI/CD, inject `OAF_MODEL` through secure secret stores.

## References

- Mini-A project: <https://github.com/openaf/mini-a>
- Mini-A usage/docs: <https://github.com/openaf/mini-a/blob/master/USAGE.md>
- `ghcopilot` opack: <https://github.com/openaf/openaf-opacks/tree/master/ghcopilot>
