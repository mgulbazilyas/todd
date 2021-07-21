cd todd
Write-Output "Adding Scheduler"
schtasks /change /xml "Grinder start stop.xml" /tn "grinder start stop app"

