echo off
color 0a
chcp 1251
title Login
cls

set direct=%cd%
if not exist %direct% color 0c && cls && echo No Radmin connection... && pause>nul && exit

%direct%\main.bat
exit