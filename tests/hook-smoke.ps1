$ErrorActionPreference = "Stop"
$root = Split-Path $PSScriptRoot -Parent
$env:CLAUDE_PLUGIN_ROOT = $root
$raw = cmd /c "`"$root\hooks\run-hook.cmd`" session-start" 2>&1 | Out-String
$obj = $raw | ConvertFrom-Json
$ctx = $obj.hookSpecificOutput.additionalContext
if (-not $ctx) { throw "FALHOU: additionalContext vazio. Saida: $raw" }
if ($ctx -notmatch "html-handoff") { throw "FALHOU: nudge nao contem marcador html-handoff" }
"OK: hook emite JSON valido com o nudge ($($ctx.Length) chars)"
