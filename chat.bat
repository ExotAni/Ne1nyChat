title Ne1nyChat

if not exist "%direct%\online" md "%direct%\online"
if not exist %direct%\mhistory.bat (
    echo for /F "tokens=1 delims=#" %%%%a in ^('"prompt #$H#$E# & echo on & for %%%%b in (1) do     rem"'^) do ^(set "DEL=%%%%a"^)>%direct%\mhistory.bat
    echo goto start>>%direct%\mhistory.bat
    echo :echocolored>>%direct%\mhistory.bat
    echo ^<nul set /p ".=%%DEL%%" ^> "%%~2">>%direct%\mhistory.bat
    echo findstr /v /a:%%1 /R "^$" "%%~2" nul>>%direct%\mhistory.bat
    echo del "%%~2" ^> nul 2^>^&1i>>%direct%\mhistory.bat
    echo exit /b>>%direct%\mhistory.bat
    echo :start>>%direct%\mhistory.bat
    echo echo Ne1nyChat starting here ^^^<3>>%direct%\mhistory.bat
    echo echo. >>%direct%\mhistory.bat
)
echo.>%direct%\online\%nick%
start /b cmd /c cscript %direct%\online.vbs "%direct%\online\%nick%">nul
start /b cmd /c %direct%\massagecheck.bat

:main
pause>nul
    echo massage = inputbox("!online - check who is online now","Ne1nyChat")>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo if massage = "" then WScript.Quit>>%appdata%\Ne1ny_temp\sendmassage.vbs
    call :commands
    echo end if>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo Set FSO = CreateObject("Scripting.FileSystemObject")>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo Set f = FSO.OpenTextFile("%direct%\mhistory.bat", 8, True)>>%appdata%\Ne1ny_temp\sendmassage.vbs
    call :time_fix
    call :time_zone_fix
    echo On Error Resume Next>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo f.WriteLine("<nul set /p .=""[%fixed_time%] """)>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo f.WriteLine("call :echocolored %color:~0,1%%nick_color%""%nick% """)>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo f.WriteLine("echo : " ^& massage)>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo f.Close>>%appdata%\Ne1ny_temp\sendmassage.vbs
find "[Date: %date%]" %direct%\mhistory.bat>nul || echo echo [Date: %date%]>>%direct%\mhistory.bat
call %appdata%\Ne1ny_temp\sendmassage.vbs
goto main

:time_fix
if %time:~0,2% LSS 10 (
    set fixed_time=0%time:~1,7%
) else (
    set fixed_time=%time:~0,8%
)
exit /b

:time_zone_fix
set /a temp_time=(%fixed_time:~0,2% + (24+(-(0%time_zone%)))) %% 24
if %temp_time% LSS 10 set temp_time=0%temp_time%
set fixed_time=%temp_time%%fixed_time:~2,6%
exit /b

:commands
    echo if massage = "!online" then>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Dim objFSO>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Dim objFolder>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Dim colFiles>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Dim objFile>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Dim online>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Set objFSO = CreateObject("Scripting.FileSystemObject")>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Set objFolder = objFSO.GetFolder("%direct%\online\")>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Set colFiles = objFolder.Files>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     For Each objSubfolder in colFiles>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo         On Error Resume Next>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo         errResults = objSubfolder.Delete>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Next>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     For Each objFile in colFiles>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo         online = online ^& objFile.Name ^& vbcrlf>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     Next>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     msgbox("Now online:"^&vbcrlf^&vbcrlf^&online)>>%appdata%\Ne1ny_temp\sendmassage.vbs
    echo     WScript.Quit>>%appdata%\Ne1ny_temp\sendmassage.vbs
exit /b