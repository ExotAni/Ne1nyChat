echo off
cls
type %direct%\mhistory.txt
echo.
<nul set /p strTemp=^>^>^>

:massagecheck
fc %direct%\mhistory.txt %appdata%\Ne1ny_temp\mhistory_b.txt>nul && goto massagecheck
type %direct%\mhistory.txt > %appdata%\Ne1ny_temp\mhistory_b.txt
cls
type %direct%\mhistory.txt
echo.
<nul set /p strTemp=^>^>^>
start %appdata%\Ne1ny_temp\massage_sound.exe
goto massagecheck