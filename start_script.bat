@echo off

set /A timeout_val=450
start "" "C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.grindrapp.android"

set list=1 2 3 4
(for %%a in (%list%) do ( 
   echo %%a 
start "" "C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32_%%a --cmd launchApp --package "com.grindrapp.android"
)

)