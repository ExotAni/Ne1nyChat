echo off
cls
type %history_direct%\mhistory.txt

:massagecheck
fc %history_direct%\mhistory.txt mhistory_b.txt>nul && goto massagecheck
type %history_direct%\mhistory.txt > mhistory_b.txt
cls
type %history_direct%\mhistory.txt
goto massagecheck