$instances = Get-ChildItem -Directory "C:\ProgramData\BlueStacks_nxt\Engine" -Exclude "Manager","Promotions","UserData"
$stop_timeout_val = 60;

For ($i=0; $i -lt $instances.Length; $i++) {
    $instance = $instances[$i]
    start "" "C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance $instance --cmd launchApp --package "com.grindrapp.android"
     timeout $stop_timeout_val > NUL
     # taskkill /IM BlueStacks.exe /F
     taskkill /IM HD-Player.exe /F
     timeout $stop_timeout_val > NUL
     # taskkill /IM BlueStacks.exe /F
     taskkill /IM HD-Player.exe /F
    }
   
