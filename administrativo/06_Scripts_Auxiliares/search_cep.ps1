$lines = Get-Content 'c:\Users\breno\Documents\HUB\CEP_text.txt' -Encoding UTF8
$patterns = @('ultrassonografia', 'ultrassom', 'estimulação magnética', 'potenciais evocados', 'MEPs', 'diafragma', 'excitabilidade cortical')

for ($i = 0; $i -lt $lines.Count; $i++) {
    foreach ($p in $patterns) {
        if ($lines[$i] -match $p) {
            $lineNum = $i + 1
            $preview = $lines[$i]
            if ($preview.Length -gt 250) { $preview = $preview.Substring(0, 250) + "..." }
            Write-Output "${lineNum}: $preview"
            break
        }
    }
}
