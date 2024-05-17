cls
title Change nickname
echo Your current nickname: %nick%
echo Insert your new nickname:
echo.
set /p nick=">>>"
echo %nick%>"%appdata%\Ne1ny_temp\ne1ny_nick.txt"
exit /b