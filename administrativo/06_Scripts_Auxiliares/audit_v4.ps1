$xml = [xml](Get-Content 'PIBIT_V4_extracted\word\document.xml' -Encoding UTF8)
$ns = @{w='http://schemas.openxmlformats.org/wordprocessingml/2006/main'}
$xml.psbase.setProperty('SelectionNamespaces', $ns)

# Margins
$pgMar = $xml.SelectSingleNode('//w:sectPr/w:pgMar', $ns)
if ($pgMar) {
    $top = [math]::Round([int]$pgMar.top / 566.9, 2)
    $bottom = [math]::Round([int]$pgMar.bottom / 566.9, 2)
    $left = [math]::Round([int]$pgMar.left / 566.9, 2)
    $right = [math]::Round([int]$pgMar.right / 566.9, 2)
    Write-Output "MARGENS (cm): Superior = $top, Inferior = $bottom, Esquerda = $left, Direita = $right"
}

$lines = Get-Content 'PIBIT_V4_text.txt' -Encoding UTF8
Write-Output "`nEXEMPLOS DE CITAÇÕES NO TEXTO:"
foreach ($l in $lines) {
    if ($l -match '\([A-Z]{3,}\s+et al\.,?\s+\d{4}\)') {
        Write-Output "  [MAIÚSCULO ANTIGO] $l"
    } elseif ($l -match '\([A-Z][a-z]+\s+et al\.?,?\s+\d{4}\)') {
        Write-Output "  [NOVO ABNT 2023] $l"
    }
}

Write-Output "`nVERIFICANDO BIBLIOGRAFIA (Seção 13):"
$inBib = $false
foreach ($l in $lines) {
    if ($l -match '^\[STYLE:TOC1\] 13\.Bibliografia' -or $l -match 'Bibliografia10') { $inBib = $true; continue }
    if ($l -match '^\[STYLE:TOC1\] 14\.Anexos' -or $l -match 'Anexos11') { $inBib = $false }
    if ($inBib -and $l.Trim().Length -gt 5) {
        Write-Output "  REF: $l"
    }
}
