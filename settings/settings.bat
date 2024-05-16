:settings
title Settings
cls
echo What do u want?
echo.
echo 1) Change nickname
echo 2) Change color
echo 3) Change background color
echo 4) Back
set /p choice=">>>"
if %choice%==1 call %direct%\settings\nickname.bat
if %choice%==2 call %direct%\settings\coming_soon.bat
if %choice%==3 call %direct%\settings\coming_soon.bat
if %choice%==4 exit /b
goto settings