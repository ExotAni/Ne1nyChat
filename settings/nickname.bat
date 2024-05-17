for /F "tokens=1 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

cls
title Change nickname
<nul set /p .="Your current nickname: "
call :echocolored %color:~0,1%%nick_color% "%nick%"
echo.
echo Insert your new nickname:
echo.
set /p nick=">>>"
echo %nick%>"%appdata%\Ne1ny_temp\ne1ny_nick.txt"
exit /b

:echocolored
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i