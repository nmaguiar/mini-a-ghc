<#
.SYNOPSIS
  Windows (PowerShell) launcher for the mini-a-ghc container. Same commands as mini-a-ghc.sh.

.DESCRIPTION
  mini-a-ghc [-NoMount] [command] [args...]      (mini-a-ghc commands for the list)

  Env: GH_TOKEN, OAF_MODEL, MINI_A_MODEL, MINI_A_LC_MODEL, MINI_A_VAL_MODEL, MINI_A_DEC_MODEL,
       MINI_A_DIR (mounted at /work, default: current folder),
       MINI_A_DATA (mounted at /data, default: $HOME\mini-a), MINI_A_IMAGE, MINI_A_NO_BROWSER=1
#>
$ErrorActionPreference = 'Stop'

$DockerBin = if ($env:DOCKER_BIN) { $env:DOCKER_BIN } else { 'docker' }
$Image     = if ($env:MINI_A_IMAGE) { $env:MINI_A_IMAGE } else { 'nmaguiar/mini-a-ghc' }
$DataDir   = if ($env:MINI_A_DATA) { $env:MINI_A_DATA } else { Join-Path $HOME 'mini-a' }
$WorkDir   = if ($env:MINI_A_DIR) { $env:MINI_A_DIR } else { (Get-Location).Path }

$StudioPort = 8890; $WebPort = 12345; $WebAdvPort = 12346; $McpPort = 12347; $McpSafePort = 12348

function Show-Usage {
@"
Usage: mini-a-ghc [-NoMount] [command] [args...]

Wikis (kept in `$env:MINI_A_DATA\wikis, default ~\mini-a\wikis):
  studio [onport=$StudioPort]           Wiki Studio in the browser
  wiki <cmd> [wiki=NAME] ...        any wiki command (hydrate, query, graph, ...)

Try a wiki with Mini-A (wiki=NAME is optional, wikiaccess=rw to let it write):
  console [wiki=NAME] ...           interactive console (same as no command)
  web     [wiki=NAME] ...           simple web UI on http://localhost:$WebPort
  web-adv [wiki=NAME] ...           Advanced web UI on http://localhost:$WebAdvPort (token in the URL)

MCP servers (STDIO for desktop clients; add --http [PORT] for HTTP):
  mcp      wiki=NAME [--http [PORT]]   read-only wiki server (HTTP port $McpPort)
  mcp-safe wiki=NAME [--http [PORT]]   restricted server for untrusted clients (HTTP port $McpSafePort)
  mcp-ops  wiki=NAME [--http [PORT]]   maintenance server (read/write)
  mcp-config wiki=NAME [--safe]        print a config snippet for Claude Desktop / VS Code

Agent:
  batch goal="..." [outfile=/work/out.md] ...   non-interactive run (no TTY), answer in outfile

Other:
  help [topic] | help-wiki         guides: wiki, web, mcp, batch, models, reference (no token needed)
  doctor | bash | <command> ... | key=value ...

The current folder is mounted at /work (-NoMount to skip). wiki=NAME means
wikiroot=/data/wikis/NAME. Any onport=N is published on localhost:N.
Quote arguments with spaces: mini-a-ghc batch 'goal=Summarize this folder'
"@
}

# --- helpers -----------------------------------------------------------------

function Test-Arg([string]$Key, [string[]]$List) {
  foreach ($a in $List) { if ($a -like "$Key=*") { return $true } }
  return $false
}
function Get-ArgValue([string]$Key, [string[]]$List) {
  foreach ($a in $List) { if ($a -like "$Key=*") { return $a.Substring($Key.Length + 1) } }
  return $null
}
function Test-PortInUse([int]$Port) {
  if ($env:MINI_A_PORT_CHECK -eq '0') { return $false }
  $c = New-Object System.Net.Sockets.TcpClient
  try { $c.ConnectAsync('127.0.0.1', $Port).Wait(300) -and $c.Connected } catch { $false } finally { $c.Dispose() }
}
function New-Token { -join ((1..32) | ForEach-Object { '{0:x}' -f (Get-Random -Maximum 16) }) }

# Docker wants C:/Users/me style paths
function ConvertTo-DockerPath([string]$Path) { $Path -replace '\\', '/' }

function Get-GhModelDef([string]$Model, [string]$Token, [switch]$Decide) {
  $top = if ($Decide) { "model: $Model, " } else { '' }
  "(type: ghcopilot, ${top}options: (model: $Model, timeout: 900000, token: '$Token'))"
}

function Find-Token {
  if (-not $env:GH_TOKEN -and $env:GITHUB_TOKEN) { $env:GH_TOKEN = $env:GITHUB_TOKEN }
  if (-not $env:GH_TOKEN -and (Get-Command gh -ErrorAction SilentlyContinue)) {
    try { $t = (& gh auth token 2>$null) } catch { $t = $null }
    if ($LASTEXITCODE -eq 0 -and $t) { $env:GH_TOKEN = "$t".Trim() }
  }
}
function Test-UsesCopilot { (-not $env:OAF_MODEL) -or ($env:OAF_MODEL -like '*ghcopilot*') }

# wiki=NAME -> wikiroot=/data/wikis/NAME
function Expand-Wiki([string[]]$List) {
  $used = $false
  $out = @(foreach ($a in $List) {
    if ($a -like 'wiki=*') { $used = $true; "wikiroot=/data/wikis/$($a.Substring(5))" }
    else { if ($a -like 'wikiroot=/data/*') { $used = $true }; $a }
  })
  return @{ Args = $out; Used = $used }
}

# A wiki without mode=: Mini-A's read-only wiki Q&A preset (explicit flags still win)
function Add-WikiDefaults([string[]]$List) {
  if (Test-Arg mode $List) { if (-not (Test-Arg usewiki $List)) { return @($List) + 'usewiki=true' }; return @($List) }
  return @($List) + 'mode=wiki'
}

function Open-WhenReady([int]$Port, [string]$Url) {
  if ($env:MINI_A_NO_BROWSER) { return }
  Start-Job -ScriptBlock {
    param($p, $u)
    for ($i = 0; $i -lt 120; $i++) {
      try { Invoke-WebRequest -Uri "http://127.0.0.1:$p/" -UseBasicParsing -TimeoutSec 1 | Out-Null; Start-Process $u; return }
      catch { if ($_.Exception.Response) { Start-Process $u; return } }
      Start-Sleep -Seconds 1
    }
  } -ArgumentList $Port, $Url | Out-Null
}

# --- doctor ------------------------------------------------------------------

function Invoke-Doctor {
  $ok = $true
  function Say($s, $m) { Write-Host ('{0,-8} {1}' -f $s, $m) }
  if (-not (Get-Command $DockerBin -ErrorAction SilentlyContinue)) {
    Say FAIL 'docker not found: install Docker Desktop (https://www.docker.com/products/docker-desktop/)'; return $false
  }
  & $DockerBin info *> $null
  if ($LASTEXITCODE -ne 0) { Say FAIL 'Docker is installed but not running: start Docker Desktop'; return $false }
  Say OK 'Docker is running'

  $arch = if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64') { 'arm64' } else { 'amd64' }
  $imgArch = & $DockerBin image inspect --format '{{.Architecture}}' $Image 2>$null
  if ($LASTEXITCODE -ne 0) { Say WARN "image $Image not pulled yet (first run pulls it): docker pull $Image" }
  elseif ($imgArch -eq $arch) { Say OK "image $Image ($imgArch)" }
  else { Say WARN "image $Image is $imgArch but this machine is $arch (slow emulation): docker pull $Image" }

  Find-Token
  if ($env:OAF_MODEL -and -not (Test-UsesCopilot)) { Say OK 'OAF_MODEL set (not Copilot)' }
  elseif ($env:GH_TOKEN) { Say OK 'GitHub token found' }
  else { Say FAIL "no GitHub token: run 'gh auth login' or set `$env:GH_TOKEN (or set OAF_MODEL for another provider)"; $ok = $false }
  foreach ($v in 'OAF_MODEL', 'OAF_LC_MODEL', 'OAF_VAL_MODEL', 'OAF_DECIDE_MODEL') {
    $val = [Environment]::GetEnvironmentVariable($v)
    if ($val -and ($val -like '*localhost*' -or $val -like '*127.0.0.1*')) {
      Say WARN "$v points at localhost, which is the container itself: use host.docker.internal"
    }
  }
  Say OK "work folder $WorkDir -> /work"
  if (Test-Path $DataDir) { Say OK "data folder $DataDir -> /data" } else { Say INFO "data folder $DataDir will be created on first use" }
  foreach ($p in @(@($StudioPort, 'studio'), @($WebPort, 'web'), @($WebAdvPort, 'web-adv'), @($McpPort, 'mcp --http'), @($McpSafePort, 'mcp-safe --http'))) {
    if (Test-PortInUse $p[0]) { Say WARN "port $($p[0]) ($($p[1])) is in use; pass onport=<other>" }
    else { Say OK "port $($p[0]) ($($p[1])) is free" }
  }
  return $ok
}

function Show-McpConfig([string[]]$List) {
  $name = $null; $safe = $false
  foreach ($a in $List) {
    if ($a -eq '--safe') { $safe = $true }
    elseif ($a -like 'wiki=*') { $name = $a.Substring(5) }
    elseif (-not $name) { $name = $a }
  }
  if (-not $name) { [Console]::Error.WriteLine('Usage: mini-a-ghc mcp-config wiki=NAME [--safe]'); exit 1 }
  $server = if ($safe) { 'mcp-safe' } else { 'mcp' }
  $key = if ($safe) { "mini-a-wiki-safe-$name" } else { "mini-a-wiki-$name" }
  $data = ConvertTo-DockerPath $DataDir
@"
Claude Desktop (claude_desktop_config.json, inside "mcpServers") or
VS Code (.vscode/mcp.json, inside "servers"):

"$key": {
  "command": "docker",
  "args": ["run", "-i", "--rm", "-v", "$data/wikis:/data/wikis:ro",
           "$Image", "wiki", "$server", "wikiroot=/data/wikis/$name"]
}
"@
}

# --- main --------------------------------------------------------------------

$argv = @($args)
$mount = $true
if ($argv.Count -gt 0 -and ($argv[0] -eq '-NoMount' -or $argv[0] -eq '--no-mount')) {
  $mount = $false; $argv = @($argv | Select-Object -Skip 1)
}
$cmd = if ($argv.Count -gt 0) { $argv[0] } else { '' }
$rest = @($argv | Select-Object -Skip 1)

$interactive = -not [Console]::IsInputRedirected -and -not [Console]::IsOutputRedirected

switch ($cmd) {
  { $_ -in 'help', 'help-wiki' } {
    $a = @('run', '--rm'); if ($interactive) { $a += '-ti' }
    & $DockerBin @a $Image $cmd @rest; exit $LASTEXITCODE
  }
  { $_ -in 'commands', '-h', '--help' } { Show-Usage; exit 0 }
  'doctor' { if (Invoke-Doctor) { exit 0 } else { exit 1 } }
  'mcp-config' { Show-McpConfig $rest; exit 0 }
}

$tty = 'auto'; $data = $false; $dataRo = $false; $needsModel = $true
$openPort = $null; $openPath = '/'
$new = @()

switch ($cmd) {
  'studio' {
    $l = $rest; $data = $true; $needsModel = $false
    if (-not (Test-Arg onport $l)) { $l += "onport=$StudioPort" }
    if (-not (Test-Arg studioallowroots $l)) { $l += 'studioallowroots=["/data/wikis"]' }
    if (-not (Test-Arg studiohome $l)) { $l += 'studiohome=/data/studio' }
    $openPort = Get-ArgValue onport $l
    $new = @('wiki', 'studio') + $l
  }
  { $_ -in 'console', 'web', 'web-adv' } {
    $e = Expand-Wiki $rest; $l = @($e.Args)
    if ($e.Used) { $data = $true; $l = Add-WikiDefaults $l }
    if ($cmd -eq 'web') {
      if (-not (Test-Arg onport $l)) { $l += "onport=$WebPort" }
      $openPort = Get-ArgValue onport $l
    } elseif ($cmd -eq 'web-adv') {
      if (-not (Test-Arg onport $l)) { $l += "onport=$WebAdvPort" }
      if (-not (Test-Arg webadvanced $l)) { $l += 'webadvanced=true' }
      if (-not (Test-Arg webtoken $l)) { $l += "webtoken=$(New-Token)" }
      $openPort = Get-ArgValue onport $l
      $openPath = "/#token=$(Get-ArgValue webtoken $l)"
    }
    $new = $l
  }
  { $_ -in 'mcp', 'mcp-safe', 'mcp-ops', 'mcp-skills' } {
    $http = $null; $l = @()
    for ($i = 0; $i -lt $rest.Count; $i++) {
      if ($rest[$i] -eq '--http') {
        $http = 'default'
        if ($i + 1 -lt $rest.Count -and $rest[$i + 1] -match '^\d+$') { $http = $rest[$i + 1]; $i++ }
      } else { $l += $rest[$i] }
    }
    $l = @((Expand-Wiki $l).Args)
    if (-not (Test-Arg wikiroot $l)) {
      [Console]::Error.WriteLine("mini-a-ghc $cmd needs wiki=NAME (a folder in $DataDir\wikis) or wikiroot=/data/..."); exit 1
    }
    # MCP servers only need /data (and would leave a pid file in /work)
    $data = $true; $needsModel = $false; $mount = $false
    if ($cmd -ne 'mcp-ops') { $dataRo = $true }
    if ($http) {
      if ($http -eq 'default') { $http = if ($cmd -eq 'mcp-safe') { $McpSafePort } else { $McpPort } }
      if (-not (Test-Arg onport $l)) { $l += "onport=$http" }
      [Console]::Error.WriteLine("MCP server: http://localhost:$(Get-ArgValue onport $l)/mcp")
    } else {
      $tty = 'stdin'   # STDIO: a TTY would corrupt the protocol
    }
    $new = @('wiki', $cmd) + $l
  }
  'wiki' {
    $sub = if ($rest.Count -gt 0) { $rest[0] } else { '' }
    $l = @((Expand-Wiki $rest).Args); $data = $true
    if ($sub -in '', 'help', '-h', '--help', 'graph', 'compact', 'studio' -or $sub -like 'mcp*') { $needsModel = $false }
    if ($sub -eq 'studio') {
      if (-not (Test-Arg studioallowroots $l)) { $l += 'studioallowroots=["/data/wikis"]' }
      if (-not (Test-Arg studiohome $l)) { $l += 'studiohome=/data/studio' }
      if (-not (Test-Arg onport $l)) { $l += "onport=$StudioPort" }
      $openPort = Get-ArgValue onport $l
    }
    $new = @('wiki') + $l
  }
  'batch' {
    if (-not (Test-Arg goal $rest) -and -not (Test-Arg agent $rest)) {
      [Console]::Error.WriteLine('mini-a-ghc batch needs goal="..." (or agent=<file>)'); exit 1
    }
    $e = Expand-Wiki $rest; $l = @($e.Args)
    if ($e.Used) { $data = $true; $l = Add-WikiDefaults $l }
    if (-not (Test-Arg shellbatch $l)) { $l += 'shellbatch=true' }   # nobody can answer approval prompts
    $tty = 'none'; $new = $l
  }
  default {
    if ($cmd -eq '' -or $cmd -like '*=*') {
      $e = Expand-Wiki $argv; $l = @($e.Args)
      if ($e.Used) { $data = $true; $l = Add-WikiDefaults $l }
      $new = $l
    } else {
      $needsModel = ($cmd -eq 'list'); $new = $argv
    }
  }
}

# --- model and token ---------------------------------------------------------

Find-Token
if ((Test-UsesCopilot) -and -not $env:GH_TOKEN -and $needsModel) {
  [Console]::Error.WriteLine("No GitHub token: run 'gh auth login' or set `$env:GH_TOKEN.")
  [Console]::Error.WriteLine('Using another provider? Set OAF_MODEL (see: mini-a-ghc help). Check your setup: mini-a-ghc doctor')
  exit 1
}
if ($env:GH_TOKEN) {
  $model = if ($env:MINI_A_MODEL) { $env:MINI_A_MODEL } else { 'gpt-6-luna' }
  if (-not $env:OAF_MODEL) { $env:OAF_MODEL = Get-GhModelDef $model $env:GH_TOKEN }
  if ($env:MINI_A_LC_MODEL -and -not $env:OAF_LC_MODEL) { $env:OAF_LC_MODEL = Get-GhModelDef $env:MINI_A_LC_MODEL $env:GH_TOKEN }
  if ($env:MINI_A_VAL_MODEL -and -not $env:OAF_VAL_MODEL) { $env:OAF_VAL_MODEL = Get-GhModelDef $env:MINI_A_VAL_MODEL $env:GH_TOKEN }
  if ($env:MINI_A_DEC_MODEL -and -not $env:OAF_DECIDE_MODEL) { $env:OAF_DECIDE_MODEL = Get-GhModelDef $env:MINI_A_DEC_MODEL $env:GH_TOKEN -Decide }
}

# --- docker run --------------------------------------------------------------

$a = @('run', '--rm')
if ($tty -eq 'auto' -and $interactive) { $a += '-ti' }
elseif ($tty -eq 'stdin') { $a += '-i' }

foreach ($v in 'OAF_MODEL', 'GH_TOKEN', 'OAF_LC_MODEL', 'OAF_VAL_MODEL', 'OAF_DECIDE_MODEL', 'OAF_MINI_A_LIBS', 'OAF_MINI_A_MODE', 'STUDIO_TOKEN',
               'AWS_ACCESS_KEY_ID', 'AWS_SECRET_ACCESS_KEY', 'AWS_SESSION_TOKEN', 'AWS_REGION', 'AWS_DEFAULT_REGION', 'AWS_PROFILE') {
  if ([Environment]::GetEnvironmentVariable($v)) { $a += @('-e', $v) }
}
if ($mount) { $a += @('-v', "$(ConvertTo-DockerPath $WorkDir):/work", '-w', '/work') }
if ($data) {
  New-Item -ItemType Directory -Force -Path (Join-Path $DataDir 'wikis'), (Join-Path $DataDir 'studio') | Out-Null
  $suffix = if ($dataRo) { ':ro' } else { '' }
  $a += @('-v', "$(ConvertTo-DockerPath $DataDir):/data$suffix")
}
foreach ($x in $new) {
  if ($x -match '^onport=(\d+)$') {
    $p = [int]$Matches[1]
    if (Test-PortInUse $p) {
      [Console]::Error.WriteLine("Port $p is already in use on this machine: stop the other server or pass onport=<other>"); exit 1
    }
    $a += @('-p', "127.0.0.1:${p}:${p}")
  }
}
if ($openPort) {
  $url = "http://localhost:$openPort$openPath"
  [Console]::Error.WriteLine("Open $url (Ctrl+C to stop)")
  Open-WhenReady ([int]$openPort) $url
}

$a += $Image
$a += $new
# PowerShell 7.3+ passes embedded quotes to native commands as-is; older versions
# (including Windows PowerShell 5.1) drop them unless they are escaped
if ($PSVersionTable.PSVersion -ge [version]'7.3') { $PSNativeCommandArgumentPassing = 'Standard' }
else { $a = @($a | ForEach-Object { $_ -replace '"', '\"' }) }
& $DockerBin @a
exit $LASTEXITCODE
