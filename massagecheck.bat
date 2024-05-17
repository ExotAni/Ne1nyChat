echo off
cls
call %direct%\mhistory.bat
echo.
<nul set /p strTemp=^>^>^>

:massagecheck
fc %direct%\mhistory.bat %appdata%\Ne1ny_temp\mhistory_b.bat>nul && goto massagecheck
type %direct%\mhistory.bat > %appdata%\Ne1ny_temp\mhistory_b.bat
cls
call %direct%\mhistory.bat
echo.
<nul set /p strTemp=^>^>^>
start %appdata%\Ne1ny_temp\massage_sound.exe
goto massagecheck