for /F "tokens=1 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (set "DEL=%%a")

cls
md "%appdata%\Ne1ny_temp"
if not exist "%appdata%\Ne1ny_temp\massage_sound.exe" call copy /y "%direct%\sounds\massage_sound.exe" "%appdata%\Ne1ny_temp\"
if not exist "%appdata%\Ne1ny_temp\ne1ny_color.txt" echo 0a>"%appdata%\Ne1ny_temp\ne1ny_color.txt"
if not exist "%appdata%\Ne1ny_temp\ne1ny_nick_color.txt" echo a>"%appdata%\Ne1ny_temp\ne1ny_nick_color.txt"
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
set /p nick_color=<"%appdata%\Ne1ny_temp\ne1ny_nick_color.txt"
color %color%
title Ne1ny Menu
cls
<nul set /p .="Welcome to the club, "
call :echocolored %color:~0,1%%nick_color% "%nick%"
echo.
echo.
echo 1) Join Ne1nyChat
echo 2) Settings
echo 3) Exit
set /p choice=">>>"
if %choice%==1 call %direct%\chat.bat
if %choice%==2 call %direct%\settings\settings.bat
if %choice%==3 exit
goto welcome

:echocolored
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i