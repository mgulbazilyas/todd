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

$filePath = "Grinder start stop.xml"

# Get the current user's ID
$currentUserID = [System.Security.Principal.WindowsIdentity]::GetCurrent().User.Value

# Read the XML file content
$xmlContent = Get-Content -Path $filePath -Raw

# Replace the placeholder with the current user's ID
$updatedContent = $xmlContent -replace "USERIDTOREPLACE", $currentUserID

# Write the updated content back to the XML file
$updatedContent | Set-Content -Path $filePath

.\installationPart2.ps1

Start-ScheduledTask -TaskName "grinder start stop app"