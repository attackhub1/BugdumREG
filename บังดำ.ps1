@echo off
chcp 65001 >nul
title BUNGDUM x RUNIN ^| BangDam Shop
color 0C

set "PS=%TEMP%\bangdam.ps1"

echo.
echo ==============================================
echo           BUNGDUM x RUNIN
echo             BANGDAM SHOP
echo ==============================================
echo.
echo [DOWNLOAD] Downloading loader...

powershell.exe -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/attackhub1/BugdumREG/refs/heads/main/%E0%B8%9A%E0%B8%B1%E0%B8%87%E0%B8%94%E0%B8%B3.ps1' -OutFile '%PS%'"

if not exist "%PS%" (
    echo.
    echo [ERROR] Download failed.
    pause
    exit /b 1
)

echo [OK] Loader downloaded.
echo.
echo [START] Starting BangDam...
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PS%"

echo.
echo ==============================================
echo              BUNGDUM x RUNIN
echo              PROCESS FINISHED
echo ==============================================
pause
