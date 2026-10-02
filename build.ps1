# Generuje docs/index.html z docs/instalacja.md (pandoc dołączony do Quarto)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot/docs
@"
<footer>Przetwarzanie danych 2026/2027</footer>
"@ | Set-Content -Encoding utf8 ../_footer.tmp.html
quarto pandoc instalacja.md -s --embed-resources --css style.css -H fonts.html `
  --metadata pagetitle="Przetwarzanie danych 2026/2027" `
  -A ../_footer.tmp.html -o index.html
Remove-Item ../_footer.tmp.html
