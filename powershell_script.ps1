Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv
choco install git -params '"/GitAndUnixToolsOnPath"' -y
refreshenv
$myprocss = Start-Process -FilePath "C:\Program Files\Git\bin\git.exe" -ArgumentList "clone https://github.com/mgulbazilyas/todd" -PassThru

$myprocss.WaitForExit()
timeout /t 10
cd todd
git stash
git pull
.\installationPart2.ps1



