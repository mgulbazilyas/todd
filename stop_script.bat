@echo off

set /A timeout_val=440


set list=1 2 3 4 5
(for %%a in (%list%) do ( 
   echo %%a 

    timeout %timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout %timeout_val% > NUL
    taskkill /IM BlueStacks.exe /F
    taskkill /IM HD-Player.exe /F
    timeout 20 > NUL
))
