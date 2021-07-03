
$source = 'http://jobstestpreparation.com/grindr.apk'
$destination = 'grindr.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Write-Output "Installing Grindr"
& '.\grindr.apk'
timeout /t 300
$source = 'http://jobstestpreparation.com/fakegps.apk'
$destination = 'fakegps.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Get-BitsTransfer | Complete-BitsTransfer
Write-Output "Installing fakegps"
& '.\fakegps.apk'
timeout /t 300


Write-Output "Adding Scheduler"
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"
pause