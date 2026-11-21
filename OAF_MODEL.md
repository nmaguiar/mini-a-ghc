# OAF_MODEL recipes for mini-a-ghc

This file provides practical `OAF_MODEL` recipes for `openaf/mini-a-ghc`.

## Token location

For `ghcopilot`, set the token in `options.token`.

`mini-a-ghc` also reads `options.token` from `OAF_MODEL` during startup to run `gh auth login` before Mini-A starts.

That login step is only attempted when `OAF_MODEL` contains `ghcopilot`.

If `GH_CONFIG_DIR` points at a mounted gh config (e.g. `-v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh`) and a `ghcopilot` `OAF_MODEL` (SLON or JSON) has no `options.token` and no `GH_TOKEN`/`GITHUB_TOKEN` is set, the token is taken from `gh auth token` and added to `OAF_MODEL` automatically.

## Canonical SLON/OpenAF-style value

```bash
export GH_TOKEN="<your-token>"
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-6-luna, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"
```

## Alternative model choices

```bash
# gpt-4o
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-4o, token: '$GH_TOKEN', timeout: 900000, useStdio: true))"

# gpt-6-luna with additional settings
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-6-luna, token: '$GH_TOKEN', timeout: 900000, useStdio: true, autoRestart: true, logLevel: 'info'))"
```

## Complementary models (low-cost, validation, decision)

Instead of writing full definitions, set only the Copilot model names. The token is reused from `GH_TOKEN`/`GITHUB_TOKEN` or the mounted `gh` login:

```bash
docker run --rm -ti -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh \
  -e MINI_A_MODEL=claude-sonnet-5.5 \
  -e MINI_A_LC_MODEL=gpt-5.6-luna \
  -e MINI_A_VAL_MODEL=claude-sonnet-5.5 \
  -e MINI_A_DEC_MODEL=gpt-6-luna \
  nmaguiar/mini-a-ghc
```

| Variable | Sets | Equivalent Mini-A parameter |
|----------|------|-----------------------------|
| `MINI_A_LC_MODEL` | `OAF_LC_MODEL` | `modellc=` |
| `MINI_A_VAL_MODEL` | `OAF_VAL_MODEL` | `modelval=` |
| `MINI_A_DEC_MODEL` | `OAF_DECIDE_MODEL` | `modeldec=` |

None has a default, and each is ignored when its `OAF_*` variable is already set. The decision definition also has a top-level `model`, which Mini-A's decision client requires:

```
(type: ghcopilot, model: gpt-6-luna, options: (model: gpt-6-luna, timeout: 900000, token: '...'))
```

## JSON-like reference representation

If you store model settings elsewhere and convert/inject at runtime:

```json
{
  "type": "ghcopilot",
  "options": {
    "model": "gpt-6-luna",
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
