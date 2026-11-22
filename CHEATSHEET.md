# mini-a-ghc Docker cheatsheet

[Setup](#setup) · [Batch ingestion](#batch-ingestion) · [Batch Dream](#batch-dream) · [Wiki Studio](#wiki-studio) · [Wiki MCP](#wiki-mcp) · [Console](#console) · [Agent batch](#agent-batch) · [Web UIs](#web-uis) · [More commands](#more-commands)

## Setup

Start Docker with Linux containers. From this repository's checkout, build the image once so it includes the wiki commands documented here.

```text
docker build -t mini-a-ghc:local .
```

Then open a terminal in the folder you want to ingest or use as the agent's workspace. Run the setup for your shell once per terminal. The examples share the wiki `myproject`. Change its name in the setup to use another wiki. If you already have an image that includes the `wiki` command, set the image variable to that tag.

**macOS / Linux / WSL (Bash or Zsh)**

```bash
mini_a_image=mini-a-ghc:local
mini_a_work="$PWD"
mini_a_data="$HOME/mini-a"
mini_a_wiki=/data/wikis/myproject
mkdir -p "$mini_a_data/wikis" "$mini_a_data/studio"
mini_a_user=()
if [ "$(uname -s)" = Linux ]; then mini_a_user=(--user "$(id -u):$(id -g)"); fi
```

**Windows (PowerShell)**

```powershell
$miniAImage = 'mini-a-ghc:local'
$miniAWork = (Get-Location).Path -replace '\\', '/'
$miniAData = (Join-Path $HOME 'mini-a') -replace '\\', '/'
$miniAWiki = '/data/wikis/myproject'
New-Item -ItemType Directory -Force -Path "$miniAData/wikis", "$miniAData/studio" | Out-Null
```

`/work` is your starting folder. `/data/wikis` holds the wikis and `/data/studio` holds Studio's registry, jobs and backups. These files persist after the container exits. On WSL, keep large wikis in the Linux filesystem for faster indexing.

### Sign in for model-backed commands

For Copilot, run `gh auth login` on the host once if you haven't signed in. Then load the token into your terminal session.

**macOS / Linux / WSL**

```bash
export GH_TOKEN="$(gh auth token)"
```

**Windows (PowerShell)**

```powershell
$env:GH_TOKEN = gh auth token
```

For another provider, set `OAF_MODEL` in your terminal and pass it with `-e OAF_MODEL`, as shown below. See [model configuration](help/models.md). Wiki MCP and the help commands can run before signing in. Studio can start without a model, and its ingestion and Dream jobs use the model.

## Batch ingestion

**Build or refresh a wiki from the starting folder.** Hydrate ingests the folder and compacts the serving index. Stop Studio and other readers or writers of this wiki before running it. Run it again after the sources change.

**macOS / Linux / WSL**

```bash
docker run --rm "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_work:/work:ro" -v "$mini_a_data/wikis:/data/wikis" "$mini_a_image" wiki hydrate source=/work "wikiroot=$mini_a_wiki"
```

**Windows (PowerShell)**

```powershell
docker run --rm -e GH_TOKEN -e OAF_MODEL -v "${miniAWork}:/work:ro" -v "$miniAData/wikis:/data/wikis" $miniAImage wiki hydrate source=/work "wikiroot=$miniAWiki"
```

**Add a single source.** The example imports the `docs` subfolder. Change `ingestsource=` to point to another mounted folder, a public Git repo URL, or a page URL.

**macOS / Linux / WSL**

```bash
docker run --rm "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_work:/work:ro" -v "$mini_a_data/wikis:/data/wikis" "$mini_a_image" wiki ingest ingestsource=/work/docs "wikiroot=$mini_a_wiki"
```

**Windows (PowerShell)**

```powershell
docker run --rm -e GH_TOKEN -e OAF_MODEL -v "${miniAWork}:/work:ro" -v "$miniAData/wikis:/data/wikis" $miniAImage wiki ingest ingestsource=/work/docs "wikiroot=$miniAWiki"
```

To preview sources, append `dryrun=true` for hydrate or `ingestdryrun=true` for ingest. To filter a folder, append an option such as `ingestinclude=docs,src` or `ingestexclude=node_modules,dist`.

## Batch Dream

Reorganize an existing wiki and compact its index. Stop Studio and other readers or writers of the wiki first. Dream can move, merge or delete pages and writes a `myproject.predream-*.zip` backup alongside the wiki by default. Append `dreamwikimode=plan` to preview the proposed changes.

**macOS / Linux / WSL**

```bash
docker run --rm "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_data/wikis:/data/wikis" "$mini_a_image" wiki dream "wikiroot=$mini_a_wiki"
```

**Windows (PowerShell)**

```powershell
docker run --rm -e GH_TOKEN -e OAF_MODEL -v "$miniAData/wikis:/data/wikis" $miniAImage wiki dream "wikiroot=$miniAWiki"
```

## Wiki Studio

Open [127.0.0.1:8890](http://127.0.0.1:8890) and paste the access token printed at startup. Register `/data/wikis/myproject` in Studio to manage the wiki you built above. Press Ctrl+C in the terminal to stop the server. To reuse a token between runs, set `STUDIO_TOKEN` in your terminal to a value of at least 32 characters.

**macOS / Linux / WSL**

```bash
docker run --rm -it "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -e STUDIO_TOKEN -p 127.0.0.1:8890:8890 -v "$mini_a_data/wikis:/data/wikis" -v "$mini_a_data/studio:/data/studio" "$mini_a_image" wiki studio onport=8890 'studioallowroots=["/data/wikis"]' studiohome=/data/studio
```

**Windows (PowerShell)**

```powershell
$miniAStudioRoots = 'studioallowroots=["/data/wikis"]'
if ($PSVersionTable.PSVersion -lt [version]'7.3' -or $PSNativeCommandArgumentPassing -eq 'Legacy') {
    $miniAStudioRoots = $miniAStudioRoots.Replace('"', '\"')
}
docker run --rm -it -e GH_TOKEN -e OAF_MODEL -e STUDIO_TOKEN -p 127.0.0.1:8890:8890 -v "$miniAData/wikis:/data/wikis" -v "$miniAData/studio:/data/studio" $miniAImage wiki studio onport=8890 $miniAStudioRoots studiohome=/data/studio
```

## Wiki MCP

### HTTP

Point your MCP client at `http://127.0.0.1:12347/mcp`. The wiki is mounted read-only. For bounded retrieval, replace `wiki mcp` with `wiki mcp-safe`. Press Ctrl+C to stop the server.

**macOS / Linux / WSL**

```bash
docker run --rm "${mini_a_user[@]}" -p 127.0.0.1:12347:12347 -v "$mini_a_data/wikis:/data/wikis:ro" "$mini_a_image" wiki mcp "wikiroot=$mini_a_wiki" onport=12347
```

**Windows (PowerShell)**

```powershell
docker run --rm -p 127.0.0.1:12347:12347 -v "$miniAData/wikis:/data/wikis:ro" $miniAImage wiki mcp "wikiroot=$miniAWiki" onport=12347
```

### STDIO

Your MCP client launches the command. Use `-i` without `-t` so stdout carries MCP messages. If you have the [launcher](README.md#quick-start-laptop-launcher-macos-windows-linux), run `mini-a-ghc mcp-config wiki=myproject` to generate the client configuration with absolute paths. Set the image in the generated configuration to the same tag as in your setup.

**macOS / Linux / WSL**

```bash
docker run --rm -i "${mini_a_user[@]}" -v "$mini_a_data/wikis:/data/wikis:ro" "$mini_a_image" wiki mcp "wikiroot=$mini_a_wiki"
```

**Windows (PowerShell)**

```powershell
docker run --rm -i -v "$miniAData/wikis:/data/wikis:ro" $miniAImage wiki mcp "wikiroot=$miniAWiki"
```

For the client configuration format, see [MCP setup](help/mcp.md#-stdio-desktop-clients).

## Console

**Open the general console.** Type `/help` to see the available commands.

**macOS / Linux / WSL**

```bash
docker run --rm -it "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_work:/work" -w /work "$mini_a_image"
```

**Windows (PowerShell)**

```powershell
docker run --rm -it -e GH_TOKEN -e OAF_MODEL -v "${miniAWork}:/work" -w /work $miniAImage
```

**Chat with the wiki.** Try `/wiki list` or `/wiki search deployment`.

**macOS / Linux / WSL**

```bash
docker run --rm -it "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_work:/work" -w /work -v "$mini_a_data/wikis:/data/wikis:ro" "$mini_a_image" mode=wiki "wikiroot=$mini_a_wiki"
```

**Windows (PowerShell)**

```powershell
docker run --rm -it -e GH_TOKEN -e OAF_MODEL -v "${miniAWork}:/work" -w /work -v "$miniAData/wikis:/data/wikis:ro" $miniAImage mode=wiki "wikiroot=$miniAWiki"
```

## Agent batch

Run one goal without a terminal and save the answer to `summary.md` in the starting folder. For scripts, check that a fresh output file was written, since Mini-A can exit with status 0 when it gives up on a goal.

**macOS / Linux / WSL**

```bash
docker run --rm "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -v "$mini_a_work:/work" -w /work "$mini_a_image" 'goal=Summarize the documents in /work in five bullets' useutils=true shellbatch=true outfile=/work/summary.md
```

**Windows (PowerShell)**

```powershell
docker run --rm -e GH_TOKEN -e OAF_MODEL -v "${miniAWork}:/work" -w /work $miniAImage 'goal=Summarize the documents in /work in five bullets' useutils=true shellbatch=true outfile=/work/summary.md
```

## Web UIs

Open [127.0.0.1:12345](http://127.0.0.1:12345) for simple wiki chat. For the advanced console in your browser, append `webadvanced=true` and open the tokenized URL printed at startup. Keep that URL private.

**macOS / Linux / WSL**

```bash
docker run --rm -it "${mini_a_user[@]}" -e GH_TOKEN -e OAF_MODEL -p 127.0.0.1:12345:12345 -v "$mini_a_data/wikis:/data/wikis:ro" "$mini_a_image" mode=wiki "wikiroot=$mini_a_wiki" onport=12345
```

**Windows (PowerShell)**

```powershell
docker run --rm -it -e GH_TOKEN -e OAF_MODEL -p 127.0.0.1:12345:12345 -v "$miniAData/wikis:/data/wikis:ro" $miniAImage mode=wiki "wikiroot=$miniAWiki" onport=12345
```

## More commands

These commands work as written in Bash, Zsh and PowerShell. Replace `ingest` with `hydrate`, `dream`, `studio`, `mcp`, `ops` or `graph` to see options for that wiki job.

```text
docker run --rm mini-a-ghc:local help
docker run --rm mini-a-ghc:local help wiki
docker run --rm mini-a-ghc:local wiki ingest -jobhelp
```

[Laptop launcher](README.md#quick-start-laptop-launcher-macos-windows-linux) · [Docker Compose](README.md#quick-start-docker-compose) · [Running a custom oJob](README.md#running-an-ojob) · [Wiki lint, reindex and graph export](help/wiki.md)
