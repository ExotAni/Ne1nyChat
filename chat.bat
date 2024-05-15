echo off
color 0a
chcp 1251
title Ne1nyChat

if not exist \\exotani\FreeForAll\Ne1nyChat color 0c && cls && echo No Radmin connection... && pause>nul && exit

if not exist \\exotani\FreeForAll\Ne1nyChat\mhistory.txt (
    echo Ne1nyChat starting here ^<3>\\exotani\FreeForAll\Ne1nyChat\mhistory.txt
    echo. >>\\exotani\FreeForAll\Ne1nyChat\mhistory.txt
)
cls

start /b cmd /c massagecheck.bat

:main
timeout /t 1 /nobreak>nul
echo.
set massage= 
set /p massage=">>>"
set custom_time=%time:~0,8%
set custom_date=[Date: %date%]
find "%custom_date%" \\exotani\FreeForAll\Ne1nyChat\mhistory.txt>nul || echo %custom_date%>>\\exotani\FreeForAll\Ne1nyChat\mhistory.txt
echo [%custom_time%] Malki: %massage%>>\\exotani\FreeForAll\Ne1nyChat\mhistory.txt
goto main
