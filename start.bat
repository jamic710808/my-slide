@echo off
title open-slide - Dev Server

echo.
echo  [open-slide] Starting dev server...
echo  [open-slide] Browser will open at http://localhost:5173
echo.

cd /d "%~dp0"

start "" /b cmd /c "timeout /t 4 /nobreak >nul && start http://localhost:5173"

pnpm dev
