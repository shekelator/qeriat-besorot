# this works, but the styles aren't consistent across the documents, so they won't all look right.
$filePath = "./texts/Acharei Mot-Kedoshim A.htm"

$content = Get-Content $filePath -Raw
$newContent = $content -replace "(?s)<style.*?</style>", "<link rel='stylesheet' type='text/css' href='styles.css'>"

Set-Content $filePath $newContent
