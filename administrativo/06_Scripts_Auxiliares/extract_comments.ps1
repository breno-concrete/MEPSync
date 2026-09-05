[xml]$xml = Get-Content 'c:\Users\breno\Documents\HUB\PIBIT_extracted\word\comments.xml' -Encoding UTF8

$nsmgr = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
$nsmgr.AddNamespace("w", "http://schemas.openxmlformats.org/wordprocessingml/2006/main")

foreach($comment in $xml.comments.comment) {
    $author = $comment.author
    $date = $comment.date
    $id = $comment.id
    $texts = $comment.SelectNodes('.//w:t', $nsmgr)
    $fullText = ($texts | ForEach-Object { $_.InnerText }) -join ''
    Write-Output "=== COMMENT ID=$id by $author ($date) ==="
    Write-Output $fullText
    Write-Output ""
}
