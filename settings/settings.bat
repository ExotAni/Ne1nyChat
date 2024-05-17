:settings
title Settings
color %color%
cls
echo What do u want?
echo.
echo 1) Change nickname
echo 2) Change color
echo 3) Change background color
echo 4) Back
set /p choice1=">>>"
if %choice1%==1 call %direct%\settings\nickname.bat
if %choice1%==2 call %direct%\settings\color.bat
if %choice1%==3 call %direct%\settings\color_background.bat
if %choice1%==4 exit /b
goto settings