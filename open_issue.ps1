Clear-Host

$issues = (Get-Content "response.json" | ConvertFrom-Json).issues
for ($i = 0; $i -lt $issues.Count; $i++) {
    $issue = $issues[$i]
    $status = $issue.fields.status.name

    # Set color based on status
    switch ($status) {
        "Open"         { $color = "Green" }
        "In Progress"   { $color = "Yellow" }
        default         { $color = "Red" }
    }

    Write-Host ($i+1).ToString().PadRight(3) + '| ' + $issue.key + ' | ' + $issue.fields.summary + ' | ' + $status -ForegroundColor $color
}

$choice = Read-Host 'Enter the number of the issue to open'
if ($choice -match '^\d+$' -and $choice -ge 1 -and $choice -le $issues.Count) {
    $key = $issues[$choice - 1].key
    Start-Process "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList "--profile-directory=""Profile 1""", "https://sovos.atlassian.net/browse/$key"
    exit
} else {
    Write-Host 'Invalid selection.'
    pause
}
