# OAF_MODEL recipes for mini-a-ghc

This file provides practical `OAF_MODEL` recipes for `openaf/mini-a-ghc`.

## Why two token fields?

- `ghcopilot` provider docs use `options.token`.
- `mini-a-ghc` entrypoint extracts top-level `token` from `OAF_MODEL` to run `gh auth login` before Mini-A starts.

For this image, set both fields to the same value.

## Canonical SLON/OpenAF-style value

```bash
export GH_TOKEN="<your-token>"
export OAF_MODEL="(type: ghcopilot, token: '$GH_TOKEN', options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"
```

## Alternative model choices

```bash
# gpt-4o
export OAF_MODEL="(type: ghcopilot, token: '$GH_TOKEN', options: (model: gpt-4o, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"

# gpt-4.1 with additional settings
export OAF_MODEL="(type: ghcopilot, token: '$GH_TOKEN', options: (model: gpt-4.1, token: '$GH_TOKEN', timeout: 900000, useStdio: true, autoRestart: true, logLevel: 'info'))"
```

## JSON-like reference representation

If you store model settings elsewhere and convert/inject at runtime:

```json
{
  "type": "ghcopilot",
  "token": "${GH_TOKEN}",
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
