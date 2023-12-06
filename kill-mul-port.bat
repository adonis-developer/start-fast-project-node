@echo off
setlocal enabledelayedexpansion
set "ports=3000 3005 3010 9090 9091 9092 9093 9094"

for %%p in (%ports%) do (
    for /f "tokens=5" %%i in ('netstat -ano ^| findstr :%%p') do (
    	set "pid=%%i"
        echo Port %%p find %%i PID
    )
    if not !pid!=="" (
        echo PID: !pid!
        taskkill /PID !pid! /F
    ) else (
        echo  PID not found
    )
)

pause
