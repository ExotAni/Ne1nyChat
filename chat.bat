echo off
color 0a
chcp 1251
title Ne1nyChat

set nick=Malki
set history_direct=\\exotani\FreeForAll\Ne1nyChat

if not exist %history_direct% color 0c && cls && echo No Radmin connection... && pause>nul && exit

if not exist %history_direct%\mhistory.txt (
    echo Ne1nyChat starting here ^<3>%history_direct%\mhistory.txt
    echo. >>%history_direct%\mhistory.txt
)
cls

start /b cmd /c massagecheck.bat

:main
timeout /t 1 /nobreak>nul
echo.
set massage= 
set /p massage=">>>"
find "[Date: %date%]" %history_direct%\mhistory.txt>nul || echo [Date: %date%]>>%history_direct%\mhistory.txt
echo [%time:~0,8%] %nick%: %massage%>>%history_direct%\mhistory.txt
goto main
