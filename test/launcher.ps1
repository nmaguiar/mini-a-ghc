# Tests for mini-a-ghc.ps1 (no Pester needed). Run on any OS with PowerShell:
#   pwsh test/launcher.ps1
# or with Docker:
#   docker run --rm -v "$PWD:/src" -w /src mcr.microsoft.com/powershell pwsh test/launcher.ps1
$ErrorActionPreference = 'Stop'
$Launcher = Join-Path $PSScriptRoot '../mini-a-ghc.ps1'
$Tmp = Join-Path ([IO.Path]::GetTempPath()) ("mini-a-ps-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $Tmp | Out-Null
$Log = Join-Path $Tmp 'docker.log'

# docker stub: one argument per line
$Stub = Join-Path $Tmp 'docker.ps1'
"param() `$args | Set-Content -Path '$Log'" | Set-Content $Stub
$failed = 0; $passed = 0

function Reset-Env {
  foreach ($v in 'GH_TOKEN', 'GITHUB_TOKEN', 'OAF_MODEL', 'MINI_A_MODEL', 'MINI_A_LC_MODEL', 'MINI_A_VAL_MODEL', 'MINI_A_DEC_MODEL',
                 'OAF_LC_MODEL', 'OAF_VAL_MODEL', 'OAF_DECIDE_MODEL', 'MINI_A_IMAGE') { Remove-Item "env:$v" -ErrorAction SilentlyContinue }
  $env:DOCKER_BIN = $Stub; $env:MINI_A_DATA = Join-Path $Tmp 'data'; $env:MINI_A_DIR = $Tmp
  $env:MINI_A_NO_BROWSER = '1'; $env:MINI_A_PORT_CHECK = '0'
  $env:PATH = (Join-Path $Tmp 'bin')   # no host gh
  Remove-Item $Log -ErrorAction SilentlyContinue
}
function Run([string[]]$A) {
  $out = & $pwshPath -NoProfile -File $Launcher @A 2>&1 | Out-String
  return @{ Code = $LASTEXITCODE; Out = $out; Log = $(if (Test-Path $Log) { @(Get-Content $Log) } else { @() }) }
}
function Has($r, $s) { $r.Log -contains $s }
function Pair($r, $f, $v) { for ($i = 0; $i -lt $r.Log.Count - 1; $i++) { if ($r.Log[$i] -eq $f -and $r.Log[$i + 1] -eq $v) { return $true } }; $false }
function Invoke-Case($name, [scriptblock]$body) {
  Reset-Env
  try { if (& $body) { $script:passed++; "ok $name" } else { $script:failed++; "FAIL $name" } }
  catch { $script:failed++; "FAIL $name ($_)" }
}

$pwshPath = (Get-Command pwsh).Source

Invoke-Case 'no command starts the console with the default Copilot model' {
  $env:GH_TOKEN = 'tok'; $r = Run @()
  $r.Code -eq 0 -and (Pair $r '-e' 'OAF_MODEL') -and (Pair $r '-v' "$($Tmp -replace '\\','/'):/work") -and $r.Log[-1] -eq 'nmaguiar/mini-a-ghc'
}
Invoke-Case 'no token fails for commands that need a model' {
  $r = Run @('goal=hello'); $r.Code -eq 1 -and $r.Out -like '*No GitHub token*' -and $r.Log.Count -eq 0
}
Invoke-Case 'non-Copilot OAF_MODEL needs no token' {
  $env:OAF_MODEL = '(type: openai)'; $r = Run @('goal=hello'); $r.Code -eq 0 -and -not (Has $r 'GH_TOKEN')
}
Invoke-Case 'studio keeps embedded quotes, port and data mount' {
  $r = Run @('studio')
  $r.Code -eq 0 -and (Pair $r '-p' '127.0.0.1:8890:8890') -and (Has $r 'studioallowroots=["/data/wikis"]') -and (Has $r 'studiohome=/data/studio') -and
    (Pair $r '-v' "$(($env:MINI_A_DATA) -replace '\\','/'):/data")
}
Invoke-Case 'console wiki=NAME enables the wiki' {
  $env:GH_TOKEN = 'tok'; $r = Run @('console', 'wiki=proj')
  (Has $r 'wikiroot=/data/wikis/proj') -and (Has $r 'mode=wiki') -and -not (Has $r 'console')
}
Invoke-Case 'web-adv adds token and prints URL' {
  $env:GH_TOKEN = 'tok'; $r = Run @('web-adv', 'webtoken=abc')
  $r.Out -like '*http://localhost:12346/#token=abc*' -and (Has $r 'webadvanced=true') -and (Pair $r '-p' '127.0.0.1:12346:12346')
}
Invoke-Case 'mcp STDIO uses -i, no TTY, read-only data, no /work' {
  $r = Run @('mcp', 'wiki=proj')
  (Has $r '-i') -and -not (Has $r '-ti') -and (Has $r 'wikiroot=/data/wikis/proj') -and
    ($r.Log | Where-Object { $_ -like '*:/data:ro' }).Count -eq 1 -and -not (Has $r '/work')
}
Invoke-Case 'mcp-safe --http uses its port' {
  $r = Run @('mcp-safe', 'wiki=proj', '--http'); (Has $r 'onport=12348') -and $r.Out -like '*localhost:12348/mcp*'
}
Invoke-Case 'batch needs a goal, passes spaces intact, no TTY' {
  $env:GH_TOKEN = 'tok'
  $r1 = Run @('batch'); $r2 = Run @('batch', 'goal=two words')
  $r1.Code -eq 1 -and (Has $r2 'goal=two words') -and -not (Has $r2 '-ti') -and -not (Has $r2 '-i')
}
Invoke-Case 'mcp-config prints a snippet' {
  $r = Run @('mcp-config', 'wiki=proj', '--safe'); $r.Out -like '*"mini-a-wiki-safe-proj"*' -and $r.Out -like '*"mcp-safe", "wikiroot=/data/wikis/proj"*'
}

Invoke-Case 'help topics and help-wiki go to the container' {
  $r1 = Run @('help', 'wiki'); $r2 = Run @('help-wiki')
  $r1.Log[-2] -eq 'help' -and $r1.Log[-1] -eq 'wiki' -and $r2.Log[-1] -eq 'help-wiki'
}

Remove-Item -Recurse -Force $Tmp
"$passed passed, $failed failed"
if ($failed -gt 0) { exit 1 }
