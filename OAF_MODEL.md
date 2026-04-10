# OAF_MODEL recipes for mini-a-ghc

This file provides practical `OAF_MODEL` recipes for `openaf/mini-a-ghc`.

## Token location

For `ghcopilot`, set the token in `options.token`.

`mini-a-ghc` also reads `options.token` from `OAF_MODEL` during startup to run `gh auth login` before Mini-A starts.

That login step is only attempted when `OAF_MODEL` contains `ghcopilot`.

## Canonical SLON/OpenAF-style value

```bash
export GH_TOKEN="<your-token>"
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"
```

## Alternative model choices

```bash
# gpt-4o
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4o, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"

# gpt-4.1 with additional settings
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true, autoRestart: true, logLevel: 'info'))"
```

## JSON-like reference representation

If you store model settings elsewhere and convert/inject at runtime:

```json
{
  "type": "ghcopilot",
  "options": {
    "model": "gpt-4.1",
    "token": "${GH_TOKEN}",
    "timeout": 900000,
    "useStdio": true
  }
}
```

## Container run patterns

Interactive:

```bash
docker run --rm -ti -e OAF_MODEL="$OAF_MODEL" openaf/mini-a-ghc
```

Interactive with initialization script:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  -e INIT_SCRIPT=/work/init.sh \
  -v "$(pwd)":/work -w /work \
  openaf/mini-a-ghc
```

List models exposed by the configured provider:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc list
```

One-shot goal:

```bash
docker run --rm -ti \
  -e OAF_MODEL="$OAF_MODEL" \
  openaf/mini-a-ghc \
  goal="Explain the architecture of this repo" useshell=true
```

Web mode:

```bash
docker run --rm -d \
  -e OAF_MODEL="$OAF_MODEL" \
  -p 12345:12345 \
  openaf/mini-a-ghc onport=12345
```

## Notes

- The container starts in `/home/openaf`.
- `INIT_SCRIPT`, if set, runs as the `openaf` user before Mini-A starts.
