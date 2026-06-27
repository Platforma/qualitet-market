Write-Host "Zamieniam domeny w całym projekcie..."

$old1 = "uszefaqualitet.pl"
$new1 = "qualitet-market.com"

$old2 = "api.uszefaqualitet.pl"
$new2 = "api.qualitet-market.com"

Get-ChildItem -Recurse -File | ForEach-Object {
    $content = Get-Content -LiteralPath $_.FullName
    $content = $content -replace $old1, $new1
    $content = $content -replace $old2, $new2
    Set-Content -LiteralPath $_.FullName -Value $content
}

Write-Host "Gotowe! Wszystkie domeny zostały zmienione."
