Dism /online /Enable-Feature /FeatureName:"NetFx3" /enable-feature /all
& "C:\Program Files\BlueStacks_bgp64\BlueStacksUninstaller.exe" -s
timeout /t 90
Copy-Item -Path ".\vcruntime140.dll" -Destination "C:\Windows\vcruntime140.dll"
# Copy-Item -Path ".\hd-forcegpu.exe" -Destination "C:\Windows\hd-forcegpu.exe"
$source = 'https://cdn3.bluestacks.com/downloads/windows/bgp64/4.280.4.4002/c0e5b72daaec1a9e063fa25504c24753/x64/BlueStacks-Installer_4.280.4.4002_amd64_native.exe'
$destination = 'bluestacks.exe'
Write-Output "Downloading Bluestacks"
Start-BitsTransfer -Source $source -Destination $destination 
& '.\bluestacks.exe' -s 
timeout /t 90

timeout /t 750
& "C:\Program Files\BlueStacks_bgp64\bluestacks.exe"
timeout /t 150


$source = 'http://jobstestpreparation.com/grindr.apk'
$destination = 'grindr.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Write-Output "Installing Grindr"
& '.\grindr.apk'
timeout /t 400
$source = 'http://jobstestpreparation.com/fakegps.apk'
$destination = 'fakegps.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Get-BitsTransfer | Complete-BitsTransfer
Write-Output "Installing fakegps"
& '.\fakegps.apk'
timeout /t 400

Write-Output "Adding Scheduler"
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"
pause