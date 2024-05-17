cls
md "%appdata%\Ne1ny_temp"
if not exist "%appdata%\Ne1ny_temp\massage_sound.exe" call copy /y "%direct%\sounds\massage_sound.exe" "%appdata%\Ne1ny_temp\"
if not exist "%appdata%\Ne1ny_temp\ne1ny_color.txt" echo 0a>"%appdata%\Ne1ny_temp\ne1ny_color.txt"
if not exist "%appdata%\Ne1ny_temp\ne1ny_time.txt" echo +0>"%appdata%\Ne1ny_temp\ne1ny_time.txt"

cls
if exist "%appdata%\Ne1ny_temp\ne1ny_nick.txt" goto welcome
    echo Insert your nickname:
    echo.
    set /p nick=">>>"
    echo %nick%>"%appdata%\Ne1ny_temp\ne1ny_nick.txt"
    cls

:welcome
set /p nick=<"%appdata%\Ne1ny_temp\ne1ny_nick.txt"
set /p time_zone=<"%appdata%\Ne1ny_temp\ne1ny_time.txt"
set /p color=<"%appdata%\Ne1ny_temp\ne1ny_color.txt"
color %color%
title Ne1ny Menu
cls
echo Welcome to the club, %nick%
echo.
echo 1) Join Ne1nyChat
echo 2) Settings
echo 3) Exit
set /p choice=">>>"
if %choice%==1 call %direct%\chat.bat
if %choice%==2 call %direct%\settings\settings.bat
if %choice%==3 exit
goto welcome