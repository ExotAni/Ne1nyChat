echo off
cls
type \\exotani\FreeForAll\Ne1nyChat\mhistory.txt

:massagecheck
fc \\exotani\FreeForAll\Ne1nyChat\mhistory.txt mhistory_b.txt>nul && goto massagecheck
type \\exotani\FreeForAll\Ne1nyChat\mhistory.txt > mhistory_b.txt
cls
type \\exotani\FreeForAll\Ne1nyChat\mhistory.txt
goto massagecheck