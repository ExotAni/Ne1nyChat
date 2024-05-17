cls
call copy /y "%direct%\sounds\massage_sound.exe" "%cd%"
if not exist "%appdata%\ne1ny_color.txt" echo 0a>"%appdata%\ne1ny_color.txt"


if exist "%appdata%\ne1ny_nick.txt" goto welcome
    echo Insert your nickname:
    echo.
    set /p nick=">>>"
    echo %nick%>%appdata%\ne1ny_nick.txt
    cls

:welcome
set /p nick=<%appdata%\ne1ny_nick.txt
title Ne1ny Menu
set /p color=<"%appdata%\ne1ny_color.txt"
color %color%
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