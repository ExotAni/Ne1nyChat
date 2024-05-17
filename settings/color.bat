for /F "tokens=1 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
title Color change

:color
cls
echo Select the color:
echo.
<nul set /p .="0 = ["
call :echocolored 70 "Black"
<nul set /p .="]           8 = ["
call :echocolored %color:~0,1%8 "Gray"
echo ]
<nul set /p .="1 = ["
call :echocolored %color:~0,1%1 "Blue"
<nul set /p .="]            9 = ["
call :echocolored %color:~0,1%9 "Light Blue"
echo ]
<nul set /p .="2 = ["
call :echocolored %color:~0,1%2 "Green"
<nul set /p .="]           A = ["
call :echocolored %color:~0,1%A "Light Green"
echo ]
<nul set /p .="3 = ["
call :echocolored %color:~0,1%3 "Aqua"
<nul set /p .="]            B = ["
call :echocolored %color:~0,1%B "Light Aqua"
echo ]
<nul set /p .="4 = ["
call :echocolored %color:~0,1%4 "Red"
<nul set /p .="]             C = ["
call :echocolored %color:~0,1%C "Light Red"
echo ]
<nul set /p .="5 = ["
call :echocolored %color:~0,1%5 "Purple"
<nul set /p .="]          D = ["
call :echocolored %color:~0,1%D "Light Purple"
echo ]
<nul set /p .="6 = ["
call :echocolored %color:~0,1%6 "Yellow"
<nul set /p .="]          E = ["
call :echocolored %color:~0,1%E "Light Yellow"
echo ]
<nul set /p .="7 = ["
call :echocolored %color:~0,1%7 "White"
<nul set /p .="]           F = ["
call :echocolored %color:~0,1%F "Bright White"
echo ]
echo.
set /p choice2=">>>"
for %%K in (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,a,b,c,d,e,f,) do (
    if %choice2%==%%K goto clear
)
goto color
:clear
set color=%color:~0,1%
set color=%color%%choice2%
echo %color%>"%appdata%\ne1ny_color.txt"
exit /b

:echocolored
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i