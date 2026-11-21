# MCP servers

Serve a wiki to MCP clients such as Claude Desktop, VS Code / GitHub Copilot, or another Mini-A.

| Server | Launcher | Gives clients |
|--------|----------|---------------|
| `mcp` | `mini-a-ghc mcp wiki=NAME` | Read-only search and page reads |
| `mcp-safe` | `mini-a-ghc mcp-safe wiki=NAME` | Restricted, bounded retrieval for untrusted clients or agents |
| `mcp-ops` | `mini-a-ghc mcp-ops wiki=NAME` | Maintenance: lint plus read/write |
| `mcp-skills` | `mini-a-ghc mcp-skills wiki=NAME` | A skill library built from a wiki |

None of them needs a model or token. The launcher mounts the wikis read-only, except for `mcp-ops`.

## 🔌 STDIO (desktop clients)

The client starts the server itself, so it needs the plain `docker` command. Print a ready-made snippet with your paths:

```bash
mini-a-ghc mcp-config wiki=NAME            # normal server
mini-a-ghc mcp-config wiki=NAME --safe     # safe server
```

Paste it inside `"mcpServers"` in Claude Desktop's `claude_desktop_config.json`, or inside `"servers"` in VS Code's `.vscode/mcp.json`:

```json
"mini-a-wiki-safe-NAME": {
  "command": "docker",
  "args": ["run", "-i", "--rm", "-v", "/Users/me/mini-a/wikis:/data/wikis:ro",
           "nmaguiar/mini-a-ghc", "wiki", "mcp-safe", "wikiroot=/data/wikis/NAME"]
}
```

* Use `-i` without `-t`: a terminal (TTY) corrupts the MCP messages.
* On Windows the path looks like `C:/Users/me/mini-a/wikis`.
* Docker Desktop must be running when the client starts.

## 🌍 HTTP

```bash
mini-a-ghc mcp wiki=NAME --http          # http://localhost:12347/mcp
mini-a-ghc mcp-safe wiki=NAME --http     # http://localhost:12348/mcp
mini-a-ghc mcp wiki=NAME --http 9000     # another port
```

The server listens on `localhost` only. Use HTTP for clients that cannot start Docker themselves, or to share one server between several clients.

## 🧪 Test a server

* Interactive tester (list and call tools): `mini-a-ghc --no-mount mcptest=true mcp="(type: remote, url: 'http://host.docker.internal:12347/mcp')"`
* Use it from Mini-A: `mini-a-ghc console mcp="(type: remote, url: 'http://host.docker.internal:12347/mcp')"`
* All server options: `mini-a-ghc wiki mcp -jobhelp` (also `mcp-safe`, `mcp-ops`).
* `mcp-safe` limits can be relaxed with `wikirestrictprofile=moderate` or `relaxed` (default `tight`).

## 🐳 Plain Docker HTTP server

```bash
docker run --rm -p 127.0.0.1:12347:12347 -v "$HOME/mini-a/wikis":/data/wikis:ro \
  nmaguiar/mini-a-ghc wiki mcp wikiroot=/data/wikis/NAME onport=12347
```
