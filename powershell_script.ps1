Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Set-ExecutionPolicy Unrestricted
refreshenv
choco install git -params '"/GitAndUnixToolsOnPath"' -y
refreshenv
Set-Location C:\Users\User\
$myprocss = Start-Process -FilePath "C:\Program Files\Git\bin\git.exe" -ArgumentList "clone https://github.com/mgulbazilyas/todd" -PassThru

$myprocss.WaitForExit()
timeout /t 10
Set-Location todd
git stash
git pull
.\installationPart2.ps1


Start-ScheduledTask -TaskName "grinder start stop app"


