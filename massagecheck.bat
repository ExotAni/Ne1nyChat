echo off
cls
type %direct%\mhistory.txt
echo.
<nul set /p strTemp=^>^>^>

:massagecheck
fc %direct%\mhistory.txt mhistory_b.txt>nul && goto massagecheck
type %direct%\mhistory.txt > mhistory_b.txt
cls
type %direct%\mhistory.txt
echo.
<nul set /p strTemp=^>^>^>
goto massagecheck