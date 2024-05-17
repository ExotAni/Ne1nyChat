for /F "tokens=1 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:settings
title Settings
color %color%
cls
echo What do you want?
echo.
echo 1) Change nickname
<nul set /p .="2) Change "
call :echocolored %color:~0,1%%nick_color% "nick "
call :echocolored %color% " color"
echo.
echo 3) Change text color
echo 4) Change background color
echo 5) Change time zone
echo 6) Back
set /p choice1=">>>"
if %choice1%==1 call %direct%\settings\nickname.bat
if %choice1%==2 call %direct%\settings\nick_color.bat
if %choice1%==3 call %direct%\settings\text_color.bat
if %choice1%==4 call %direct%\settings\color_background.bat
if %choice1%==5 call %direct%\settings\time_zone.bat
if %choice1%==6 exit /b
goto settings

:echocolored
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i