Dism /online /Enable-Feature /FeatureName:"NetFx3" /enable-feature /all
timeout /t 0
Copy-Item -Path ".\vcruntime140.dll" -Destination "C:\Windows\vcruntime140.dll"


Write-Output "Adding Scheduler"
schtasks /delete  /tn "grinder start stop app" /f
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"
pause

