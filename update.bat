@echo off
title open-slide - Update

echo.
echo  [open-slide] Pulling latest changes from GitHub...
echo.

cd /d "%~dp0"

git pull origin master
if %errorlevel% neq 0 (
    echo.
    echo  [ERROR] git pull failed. Check your connection or conflicts.
    pause
    exit /b 1
)

echo.
echo  [open-slide] Updating dependencies...
echo.

pnpm install

echo.
echo  [open-slide] Syncing agent skills...
echo.

pnpm exec open-slide sync:skills

echo.
echo  [DONE] Everything is up to date!
echo.
pause
