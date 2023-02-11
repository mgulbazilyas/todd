$instances = Get-ChildItem -Directory "C:\ProgramData\BlueStacks\Engine" -Exclude "Manager","Promotions","UserData"
$stop_timeout_val = 300;
Write-Output $instance
For ($i=0; $i -lt $instances.Length; $i++) {
    $instance = $instances[$i].BaseName
    Start-Process -FilePath "C:\Program Files\BlueStacks\HD-RunApp.exe" -ArgumentList "-vmname $instance", '-json "{\"app_icon_url\":\"\",\"app_name\":\"Grindr\",\"app_url\":\"\",\"app_pkg\":\"com.grindrapp.android\"}"'
     timeout /t $stop_timeout_val
     # taskkill /IM BlueStacks.exe /F
     # taskkill /IM HD-Player.exe /F
     
     taskkill /IM BlueStacks.exe /F
     taskkill /IM HD-Player.exe /F
     timeout /t $stop_timeout_val
    }
   