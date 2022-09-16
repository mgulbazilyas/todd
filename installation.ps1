Dism /online /Enable-Feature /FeatureName:"NetFx3" /enable-feature /all
& "C:\Program Files\BlueStacks_bgp64\BlueStacksUninstaller.exe" -s
timeout /t 0
Copy-Item -Path ".\vcruntime140.dll" -Destination "C:\Windows\vcruntime140.dll"
# Copy-Item -Path ".\hd-forcegpu.exe" -Destination "C:\Windows\hd-forcegpu.exe"
$source = 'https://cdn3.bluestacks.com/downloads/windows/nxt/5.1.0.1129/e854d27339a15f21d2c1d06addfc8abd/x64/BlueStacksFullInstaller_5.1.0.1129_amd64_native.exe'
$destination = 'bluestacks.exe'
Write-Output "Downloading Bluestacks"
Start-BitsTransfer -Source $source -Destination $destination 
& '.\bluestacks.exe' -s -q

timeout /t 300
$process = "C:\Program Files\BlueStacks_nxt\HD-Player.exe"
$myprocss = Start-Process -FilePath "$process$"  -PassThru
timeout /t 150
Remove-Item -Path $destination

$source = 'http://gukly.com/todd/grindr-8-16-0.apk'
$destination = 'grindr.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Write-Output "Installing Grindr"
& '.\grindr.apk'
timeout /t 300
Remove-Item -Path $destination

$source = 'http://gukly.com/todd/fakegps.apk'
$destination = 'fakegps.apk'
Start-BitsTransfer -Source $source -Destination $destination 
Get-BitsTransfer | Complete-BitsTransfer
Write-Output "Installing fakegps"
& '.\fakegps.apk'
timeout /t 300
Remove-Item -Path $destination

Write-Output "Adding Scheduler"
schtasks /create /xml "Grinder start stop.xml" /tn "grinder start stop app"
pause