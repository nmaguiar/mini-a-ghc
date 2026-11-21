# Models

Mini-A reads its main model from `OAF_MODEL`. GitHub Copilot is set up for you; for anything else, export `OAF_MODEL` on your laptop and the launcher passes it to the container (with plain Docker add `-e OAF_MODEL`).

> Treat `OAF_MODEL` as a secret when it embeds keys or tokens. Keep `timeout: 900000` (15 minutes) for agent workloads.

---

## 🐙 GitHub Copilot (ghcopilot)

Needs a GitHub account with Copilot access and `gh auth login` on your laptop.

| How | Command |
|-----|---------|
| Laptop launcher (reads `gh` from the macOS Keychain / Windows Credential Manager) | `mini-a-ghc` |
| Plain Docker with a token | `docker run --rm -ti -e GH_TOKEN="$(gh auth token)" nmaguiar/mini-a-ghc` |
| Plain Docker with a mounted `gh` login | `docker run --rm -ti -v ~/.config/gh:/gh:ro -e GH_CONFIG_DIR=/gh nmaguiar/mini-a-ghc` |

* **Choose the model** with `MINI_A_MODEL` (default `gpt-6-luna`). `mini-a-ghc list` (or `docker run ... list`) shows the models your Copilot plan allows. Model ids are lowercase, for example `gpt-6-luna`, `claude-sonnet-5.5` or `auto`.
* **Models for Mini-A's other roles (optional):** `MINI_A_LC_MODEL` (low-cost, sets `OAF_LC_MODEL`), `MINI_A_VAL_MODEL` (validation, sets `OAF_VAL_MODEL`) and `MINI_A_DEC_MODEL` (decisions, sets `OAF_DECIDE_MODEL`). They have no default, and each is ignored when its `OAF_*` variable is already set.
* **Mounted `gh` login reports no token:** `gh` keeps it in the macOS Keychain, which a container cannot read. Use the launcher or `GH_TOKEN` instead, or run `gh auth login --insecure-storage` once.
* **Token without `gh`:** create one in GitHub Settings → Developer settings → Personal access tokens and export it as `GH_TOKEN`.

A full Copilot definition, for example to change the timeout:

```bash
export OAF_MODEL="(type: ghcopilot, options: (model: gpt-6-luna, timeout: 900000, token: '$GH_TOKEN'))"
```

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
export OAF_LC_MODEL="(type: ghcopilot, options: (model: gpt-5.6-luna, timeout: 900000, token: '$GH_TOKEN'))"
docker run --rm -ti -e OAF_MODEL -e OAF_LC_MODEL -e GH_TOKEN nmaguiar/mini-a-ghc
```

---

---

## 🩺 Check a model

* `mini-a-ghc doctor` warns when an `OAF_*` model points at `localhost` (use `host.docker.internal`).
* `mini-a-ghc list` lists the models the configured provider offers.
* A quick end-to-end test: `mini-a-ghc batch goal="What is 17 times 23?"`
