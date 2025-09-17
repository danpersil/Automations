Clear-Host
$issues = (Get-Content "response.json" | ConvertFrom-Json).issues
for ($i = 0; $i -lt $issues.Count; $i++) {
    Write-Host ($i+1).ToString().PadRight(3) + '| ' + $issues[$i].key + ' | ' + $issues[$i].fields.summary
}
$choice = Read-Host 'Enter the number of the issue to open'
if ($choice -match '^\d+$' -and $choice -ge 1 -and $choice -le $issues.Count) {
    $key = $issues[$choice - 1].key
    Start-Process "https://sovos.atlassian.net/browse/$key"
} else {
    Write-Host 'Invalid selection.'
}
pause
