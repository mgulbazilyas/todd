$instances = Get-ChildItem -Directory "C:\ProgramData\BlueStacks_nxt\Engine" -Exclude "Manager","Promotions","UserData"
# $stop_timeout_val = 40;
Write-Output $instance
while (1) {
    For ($i=0; $i -lt $instances.Length; $i++) {
        $instance = $instances[$i].BaseName
        Start-Process -FilePath "C:\Program Files\BlueStacks_nxt\HD-Player.exe" -ArgumentList "--instance $instance", "--cmd launchApp", '--package "com.grindrapp.android"'
        timeout /t 65
        # taskkill /IM BlueStacks.exe /F
        taskkill /IM HD-Player.exe /F
        timeout /t 15
        # taskkill /IM BlueStacks.exe /F
        taskkill /IM HD-Player.exe /F
        }
    Write-Output "Restarts to loop by itself"
}