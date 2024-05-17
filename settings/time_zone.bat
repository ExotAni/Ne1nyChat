cls
title Change time zone
echo Your current time zone: %time_zone%
echo Insert your new time zone:        (like "+2", "-1" and e.t.c.)
echo.
set /p time_zone=">>>"
echo %time_zone%>"%appdata%\Ne1ny_temp\ne1ny_time.txt"
exit /b