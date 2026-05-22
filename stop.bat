@echo off
title open-slide - Stop Server

echo.
echo  [open-slide] Stopping port 5173...
echo.

set FOUND=0
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":5173 "') do (
    echo  Found PID: %%a - Killing...
    taskkill /PID %%a /F >nul 2>&1
    set FOUND=1
)

if "%FOUND%"=="0" (
    echo  Port 5173 is not running.
) else (
    echo  Port 5173 closed successfully.
)

echo.
pause
