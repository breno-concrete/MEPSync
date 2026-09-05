param(
    [string]$XmlPath,
    [string]$OutputPath
)

[xml]$xml = Get-Content $XmlPath -Encoding UTF8

$nsmgr = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
$nsmgr.AddNamespace("w", "http://schemas.openxmlformats.org/wordprocessingml/2006/main")

$paragraphs = $xml.SelectNodes('//w:p', $nsmgr)
$output = @()

foreach($p in $paragraphs) {
    $style = $p.SelectSingleNode('w:pPr/w:pStyle', $nsmgr)
    $styleName = if ($style) { $style.GetAttribute("w:val") } else { "" }
    
    $texts = $p.SelectNodes('.//w:t', $nsmgr)
    $line = ($texts | ForEach-Object { $_.InnerText }) -join ''
    
    # Check for comment references
    $commentRefs = $p.SelectNodes('.//w:commentReference', $nsmgr)
    $commentMarks = ""
    foreach($cr in $commentRefs) {
        $cid = $cr.GetAttribute("w:id")
        if ($cid) { $commentMarks += " [COMMENT_REF:$cid]" }
    }
    
    $commentRangeStarts = $p.SelectNodes('.//w:commentRangeStart', $nsmgr)
    foreach($crs in $commentRangeStarts) {
        $cid = $crs.GetAttribute("w:id")
        if ($cid) { $line = "[COMMENT_START:$cid]" + $line }
    }
    
    $commentRangeEnds = $p.SelectNodes('.//w:commentRangeEnd', $nsmgr)
    foreach($cre in $commentRangeEnds) {
        $cid = $cre.GetAttribute("w:id")
        if ($cid) { $line = $line + "[COMMENT_END:$cid]" }
    }
    
    if ($line.Trim() -ne "" -or $styleName -match "Heading|Titulo") {
        if ($styleName) {
            $output += "[STYLE:$styleName] $line$commentMarks"
        } else {
            $output += "$line$commentMarks"
        }
    }
}

$output | Out-File -FilePath $OutputPath -Encoding UTF8
Write-Output "Extracted $($output.Count) paragraphs to $OutputPath"
