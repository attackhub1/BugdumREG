@echo off
chcp 65001 >nul
title BUNGDUM x RUNIN ^| BangDam Shop
color 0C
mode con: cols=100 lines=35

cls

echo.
echo  ================================================================
echo.
echo       B U N G D U M   x   R U N I N
echo.
echo                  B A N G D A M   S H O P
echo.
echo  ================================================================
echo.
echo  [SYSTEM] Starting BangDam Loader...
timeout /t 1 /nobreak >nul

echo  [SYSTEM] Checking environment...
timeout /t 1 /nobreak >nul

echo  [SYSTEM] Preparing configuration...
timeout /t 1 /nobreak >nul

echo  [SYSTEM] Loading configuration...
timeout /t 1 /nobreak >nul

echo  [SYSTEM] Configuration ready.
echo.

:KEY
echo  ================================================================
echo                         KEY SYSTEM
echo  ================================================================
echo.
set /p "KEY=  Enter Key: "

if /i "%KEY%"=="BUNGDUMxRUNIN-8ee9a3s" goto KEY_OK

echo.
echo  [ERROR] INVALID KEY
echo  [INFO] ACCESS DENIED
echo.
goto KEY

:KEY_OK

echo.
echo  [OK] KEY ACCEPTED
echo  [OK] ACCESS GRANTED
echo.

timeout /t 1 /nobreak >nul

echo  [01] BangDam System ................. OK
echo  [02] Windows Configuration .......... OK
echo  [03] Registry Configuration ......... OK
echo  [04] Mouse Configuration ............ OK
echo  [05] Desktop Configuration .......... OK
echo  [06] Keyboard Configuration ......... OK
echo  [07] Temporary Configuration ........ OK
echo  [08] Emulator Detection ............. OK
echo  [09] Launch System ................... OK
echo  [10] Final Check .................... OK
echo.

echo  ================================================================
echo                       SELECT EMULATOR
echo  ================================================================
echo.
echo    [1] BlueStacks
echo    [2] BlueStacks MSI
echo.

set /p "CHOICE=  Select: "

if "%CHOICE%"=="1" goto BLUESTACKS
if "%CHOICE%"=="2" goto MSI

echo.
echo  [ERROR] Invalid selection.
timeout /t 1 /nobreak >nul
goto :eof


:BLUESTACKS

echo.
echo  [SELECT] BlueStacks
echo  [SCAN] Searching HD-Player.exe...
echo.

set "PLAYER=%ProgramFiles%\BlueStacks_nxt\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles%\BlueStacks\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles(x86)%\BlueStacks_nxt\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles(x86)%\BlueStacks\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

goto NOTFOUND


:MSI

echo.
echo  [SELECT] BlueStacks MSI
echo  [SCAN] Searching HD-Player.exe...
echo.

set "PLAYER=%ProgramFiles%\BlueStacks_msi2\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles%\BlueStacks_msi5\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles(x86)%\BlueStacks_msi2\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

set "PLAYER=%ProgramFiles(x86)%\BlueStacks_msi5\HD-Player.exe"
if exist "%PLAYER%" goto LAUNCH

goto NOTFOUND


:LAUNCH

echo.
echo  ================================================================
echo  [OK] EMULATOR FOUND
echo  ================================================================
echo.
echo  [PATH] %PLAYER%
echo.
echo  [LAUNCH] Starting emulator...
echo.

start "" "%PLAYER%"

echo.
echo  [OK] Emulator launched.
echo.
echo  ================================================================
echo                  BUNGDUM x RUNIN
echo                  BANGDAM SHOP
echo  ================================================================
echo.
pause
exit


:NOTFOUND

echo.
echo  ================================================================
echo  [ERROR] EMULATOR NOT FOUND
echo  ================================================================
echo.
echo  Please check your BlueStacks installation.
echo.
pause
exit
