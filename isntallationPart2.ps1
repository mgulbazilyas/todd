Dism /online /Enable-Feature /FeatureName:"NetFx3" /enable-feature /all
& "C:\Program Files\BlueStacks_bgp64\BlueStacksUninstaller.exe" -s
timeout /t 0
Copy-Item -Path ".\vcruntime140.dll" -Destination "C:\Windows\vcruntime140.dll"
# Copy-Item -Path ".\hd-forcegpu.exe" -Destination "C:\Windows\hd-forcegpu.exe"


Write-Output "Adding Scheduler"
schtasks /delete  /tn "grinder start stop app" /f
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"
pause