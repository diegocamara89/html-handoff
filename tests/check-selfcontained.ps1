param([Parameter(Mandatory=$true)][string]$Path)
$ErrorActionPreference = "Stop"
$ext = Select-String -Path $Path -Pattern 'https?://' |
  Where-Object { $_.Line -notmatch 'cdn\.jsdelivr\.net/npm/mermaid' }
if ($ext) {
  "FALHOU: referencia externa alem do CDN do Mermaid:"
  $ext | ForEach-Object { "  $($_.LineNumber): $($_.Line.Trim())" }
  exit 1
}
"OK: autocontido (so o CDN do Mermaid como externo)"
