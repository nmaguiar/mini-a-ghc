# Console and web UIs

| UI | Laptop launcher | Opens |
|----|-----------------|-------|
| Console | `mini-a-ghc` or `mini-a-ghc console` | your terminal |
| Simple web | `mini-a-ghc web` | http://localhost:12345 |
| Advanced web | `mini-a-ghc web-adv` | http://localhost:12346/#token=... |

Add `wiki=NAME` to any of them to try a wiki (`help wiki`). The browser opens when the server is ready; set `MINI_A_NO_BROWSER=1` to skip that. Stop a server with Ctrl+C.

## 💬 Console

* Type a request, or `/help` for the console commands (`/wiki`, `/decide`, `/set model ...`, ...).
* `goal="..."` gives one answer and exits: `mini-a-ghc console wiki=NAME goal="How is it deployed?"`.
* Let the agent use tools: `useshell=true` (read-only shell), `mode=shellrw` (shell that may change files in `/work`), `useutils=true` (file and document utilities), `mode=internet` (web search and fetch tools).

## 🌐 Simple web

* A chat UI for anyone. Without `webtoken=...` anyone who can reach the port can use it, so the launcher only listens on `localhost`.
* `mode=web` adds charts, diagrams, maps and attachments.

## 🛠️  Advanced web

* The trusted console in the browser: settings, slash commands, skills, decisions and dialogs.
* It always needs a token. The launcher generates one and opens `http://localhost:12346/#token=...`; pass `webtoken=YOURTOKEN` to keep it fixed.
* The token gives console-level authority (it can turn on the shell and wiki writes), so do not share the URL.

## 🔧 Useful options

| Option | Effect |
|--------|--------|
| `onport=N` | Use another port (the launcher publishes it on localhost) |
| `wiki=NAME wikiaccess=rw` | Let the agent edit the wiki |
| `usestream=true` | Stream tokens as they are generated |
| `knowledge="..."` / `rules="..."` | Extra context or rules for every answer |
| `mcp="(cmd: 'ojob mcps/mcp-time.yaml')"` | Attach an MCP server as tools |

## 🐳 Plain Docker equivalents

```bash
docker run --rm -ti -e GH_TOKEN="$(gh auth token)" nmaguiar/mini-a-ghc
docker run --rm -ti -e GH_TOKEN="$(gh auth token)" -p 127.0.0.1:12345:12345 nmaguiar/mini-a-ghc onport=12345
docker run --rm -ti -e GH_TOKEN="$(gh auth token)" -p 127.0.0.1:12346:12346 nmaguiar/mini-a-ghc onport=12346 webadvanced=true
```

The last one prints its `http://localhost:12346/#token=...` URL at startup.
