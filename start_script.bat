@echo off

set /A timeout_val=900
set /A stop_timeout_val=440
start "" "C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.grindrapp.android"
set list=1 2 3 4
(for %%a in (%list%) do ( 
   echo %%a 
    timeout %stop_timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout %stop_timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout 20 > NUL

start "" "C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32_%%a --cmd launchApp --package "com.grindrapp.android"
)

)
    timeout %stop_timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout %stop_timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout 20 > NUL