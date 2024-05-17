cls
title Change nickname
echo Your current nickname: %nick%
echo Insert your new nickname:
echo.
set /p nick=">>>"
echo %nick%>%appdata%\ne1ny_nick.txt
exit /b