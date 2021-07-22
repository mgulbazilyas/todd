
Write-Output "Adding Scheduler"
schtasks /delete  /tn "grinder start stop app" /f
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"

