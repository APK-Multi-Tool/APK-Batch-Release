@echo off
if (%1)==(1) goto next
if (%1)==(2) goto log
if (%1)==(3) goto updater
if (%1)==(4) goto next2
COLOR 0A

:next
COLOR 0C
cd ..
type Release.log
PAUSE
goto quit
:log
mode con:cols=24 lines=2
echo Leave this open for 10s
adb logcat >> adblog.txt

:quit
exit