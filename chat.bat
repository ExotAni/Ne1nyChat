title Ne1nyChat

if not exist %direct%\mhistory.txt (
    echo Ne1nyChat starting here ^<3>%direct%\mhistory.txt
    echo. >>%direct%\mhistory.txt
)

start /b cmd /c %direct%\massagecheck.bat

:main
pause>nul
    echo massage = inputbox("","Ne1nyChat")>sendmassage.vbs
    echo if massage = "" then WScript.Quit>>sendmassage.vbs
    echo Set FSO = CreateObject("Scripting.FileSystemObject")>>sendmassage.vbs
    echo Set f = FSO.OpenTextFile("%direct%\mhistory.txt", 8, True)>>sendmassage.vbs
    echo f.WriteLine("[%time:~0,8%] %nick%: " ^& massage)>>sendmassage.vbs
    echo f.Close>>sendmassage.vbs
find "[Date: %date%]" %direct%\mhistory.txt>nul || echo [Date: %date%]>>%direct%\mhistory.txt
call sendmassage.vbs
goto main
