# mini-a-ghc help

Mini-A agent runtime with GitHub Copilot support, wiki tools and MCP servers, in one container.

**Fastest start on a laptop (macOS, Windows, Linux):** install the `mini-a-ghc` launcher (see https://github.com/nmaguiar/mini-a-ghc#quick-start-laptop-launcher-macos-windows-linux), run `gh auth login` once, then:

{{{$acolor 'FAINT,ITALIC' 'mini-a-ghc doctor        # checks Docker, token, folders and ports'}}}
{{{$acolor 'FAINT,ITALIC' 'mini-a-ghc studio        # Wiki Studio on http://localhost:8890'}}}

**Without the launcher (plain Docker, uses your host `gh` login):**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -e GH_TOKEN="$(gh auth token)" -v "$(pwd)":/work -w /work nmaguiar/mini-a-ghc'}}}

---

## 🗺️  What do you want to do?

| Goal | Laptop launcher | Help topic |
|------|-----------------|------------|
| Build and edit wikis in the browser | `mini-a-ghc studio` | `help wiki` |
| Build a wiki from a folder | `mini-a-ghc wiki hydrate source=/work wiki=NAME` | `help wiki` |
| Try a wiki in the console | `mini-a-ghc console wiki=NAME` | `help web` |
| Try a wiki in the simple web UI | `mini-a-ghc web wiki=NAME` | `help web` |
| Try a wiki in the Advanced web UI | `mini-a-ghc web-adv wiki=NAME` | `help web` |
| Serve a wiki to Claude / VS Code / Copilot over MCP | `mini-a-ghc mcp wiki=NAME` | `help mcp` |
| The same for untrusted clients | `mini-a-ghc mcp-safe wiki=NAME` | `help mcp` |
| Run an agent goal without interaction | `mini-a-ghc batch goal="..." outfile=/work/out.md` | `help batch` |
| Use another model provider | set `OAF_MODEL` | `help models` |
| See every command and variable | `mini-a-ghc commands` | `help reference` |

## 📖 Help topics

| Command | Shows |
|---------|-------|
| `help` | This overview |
| `help wiki` (or `help-wiki`) | Wiki lifecycle: build, try, maintain, serve, Wiki Studio, troubleshooting |
| `help web` | Console, simple web and Advanced web UIs |
| `help mcp` | MCP servers (normal, safe, ops) and client configuration |
| `help batch` | Agent batch mode, goals, agent files, presets and output files |
| `help models` | Model setup: GitHub Copilot, AWS Bedrock, OpenAI, Anthropic, Gemini, Ollama |
| `help reference` | Container commands, environment variables and folders |

With the launcher: `mini-a-ghc help wiki`. With Docker: `docker run --rm -ti nmaguiar/mini-a-ghc help wiki`. Inside a container shell: `help wiki`. None of them need a token.

## 💡 Tips

* **Folders:** the current folder is `/work`. Wikis live in `/data/wikis`, which is `~/mini-a/wikis` with the launcher. `wiki=NAME` means `wikiroot=/data/wikis/NAME`.
* **Copilot models:** `mini-a-ghc list` shows the models your Copilot plan allows. Choose one with `MINI_A_MODEL` (for example `MINI_A_MODEL=gpt-6-luna`).
* **Servers on your laptop:** inside the container `localhost` is the container itself. Use `host.docker.internal` to reach Ollama or other servers on your laptop.
* **Ports:** the launcher publishes servers on `localhost` only. If a port is busy, pass `onport=<other>`.

More: https://mini-a.ai and https://github.com/nmaguiar/mini-a-ghc
