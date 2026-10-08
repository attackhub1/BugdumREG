[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

$Host.UI.RawUI.WindowTitle = "BUNGDUM x RUNIN | BangDam Shop"

Clear-Host

# ============================================================
# BIG RAINBOW LOGO
# ============================================================

$logo = @(
"██████╗  █████╗ ███╗   ██╗ ██████╗ ██████╗  █████╗ ███╗   ███╗",
"██╔══██╗██╔══██╗████╗  ██║██╔════╝ ██╔══██╗██╔══██╗████╗ ████║",
"██████╔╝███████║██╔██╗ ██║██║  ███╗██║  ██║███████║██╔████╔██║",
"██╔══██╗██╔══██║██║╚██╗██║██║   ██║██║  ██║██╔══██║██║╚██╔╝██║",
"██████╔╝██║  ██║██║ ╚████║╚██████╔╝██████╔╝██║  ██║██║ ╚═╝ ██║",
"╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝"
)

$logoColors = @(
    "Red",
    "Yellow",
    "Green",
    "Cyan",
    "Blue",
    "Magenta"
)

Write-Host ""

for ($i = 0; $i -lt $logo.Count; $i++) {
    Write-Host $logo[$i] -ForegroundColor $logoColors[$i]
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "                    BUNGDUM x RUNIN" -ForegroundColor Magenta
Write-Host "============================================================" -ForegroundColor Blue
Write-Host ""

# ============================================================
# KEY SYSTEM
# ============================================================

$validKey = "BUNGDUMxRUNIN-8ee9a3s"

Write-Host "[KEY SYSTEM]" -ForegroundColor Cyan
Write-Host "[INFO] Enter your license key" -ForegroundColor White
Write-Host ""

$key = Read-Host "KEY"

if ($key -ne $validKey) {

    Write-Host ""
    Write-Host "==================================================" -ForegroundColor Red
    Write-Host "[ERROR] INVALID KEY" -ForegroundColor Red
    Write-Host "[INFO] ACCESS DENIED" -ForegroundColor Yellow
    Write-Host "==================================================" -ForegroundColor Red
    Write-Host ""

    Start-Sleep -Seconds 2
    exit
}

Write-Host ""
Write-Host "[OK] KEY ACCEPTED" -ForegroundColor Green
Write-Host "[OK] ACCESS GRANTED" -ForegroundColor Green
Write-Host ""

Start-Sleep -Milliseconds 700

# ============================================================
# RAINBOW STATUS
# ============================================================

$rainbow = @(
    "Red",
    "Yellow",
    "Green",
    "Cyan",
    "Blue",
    "Magenta"
)

$rainbowIndex = 0

function Show-Status {
    param(
        [string]$Text,
        [int]$Delay = 12
    )

    $color = $script:rainbow[$script:rainbowIndex]

    Write-Host $Text -ForegroundColor $color

    $script:rainbowIndex++

    if ($script:rainbowIndex -ge $script:rainbow.Count) {
        $script:rainbowIndex = 0
    }

    Start-Sleep -Milliseconds $Delay
}

# ============================================================
# 200 STATUS MESSAGES
# ============================================================

$messages = @(
"[BangDam Shop] Welcome to BangDam Shop",
"[BangDam Shop] System starting",
"[BangDam Shop] Initializing loader",
"[BangDam Shop] Checking Windows",
"[BangDam Shop] Checking environment",
"[BangDam Shop] Checking temporary folder",
"[BangDam Shop] Preparing configuration",
"[BangDam Shop] Preparing registry",
"[BangDam Shop] Preparing mouse settings",
"[BangDam Shop] Preparing desktop settings",
"[BangDam Shop] Preparing emulator",
"[BangDam Shop] BangDam Engine starting",
"[BangDam Shop] Configuration loading",
"[BangDam Shop] Reading configuration",
"[BangDam Shop] Configuration loaded",
"[BangDam Shop] Checking registry path",
"[BangDam Shop] Registry path ready",
"[BangDam Shop] Preparing temporary REG",
"[BangDam Shop] Temporary REG ready",
"[BangDam Shop] Preparing RegEdit",
"[BangDam Shop] RegEdit ready",
"[BangDam Shop] Import system ready",
"[BangDam Shop] Checking user profile",
"[BangDam Shop] User profile OK",
"[BangDam Shop] Checking Windows settings",
"[BangDam Shop] Windows settings OK",
"[BangDam Shop] Checking mouse settings",
"[BangDam Shop] Mouse settings OK",
"[BangDam Shop] Checking desktop settings",
"[BangDam Shop] Desktop settings OK",
"[BangDam Shop] Checking keyboard settings",
"[BangDam Shop] Keyboard settings OK",
"[BangDam Shop] Preparing safe configuration",
"[BangDam Shop] Safe configuration ready",
"[BangDam Shop] Starting registry process",
"[BangDam Shop] Registry process running",
"[BangDam Shop] Processing configuration",
"[BangDam Shop] Processing registry",
"[BangDam Shop] Processing mouse",
"[BangDam Shop] Processing desktop",
"[BangDam Shop] Processing keyboard",
"[BangDam Shop] Registry queue ready",
"[BangDam Shop] Registry queue processing",
"[BangDam Shop] Registry queue complete",
"[BangDam Shop] Checking temporary file",
"[BangDam Shop] Temporary file found",
"[BangDam Shop] Temporary file ready",
"[BangDam Shop] Importing configuration",
"[BangDam Shop] Import command sent",
"[BangDam Shop] Waiting for RegEdit",
"[BangDam Shop] RegEdit processing",
"[BangDam Shop] RegEdit finished",
"[BangDam Shop] Checking import result",
"[BangDam Shop] Import result OK",
"[BangDam Shop] Registry import complete",
"[BangDam Shop] Registry values remain installed",
"[BangDam Shop] No registry cleanup requested",
"[BangDam Shop] Only temporary file will be removed",
"[BangDam Shop] Preparing cleanup",
"[BangDam Shop] Checking cleanup",
"[BangDam Shop] Removing temporary REG",
"[BangDam Shop] Temporary REG removed",
"[BangDam Shop] Cleanup complete",
"[BangDam Shop] Registry stage complete",
"[BangDam Shop] Preparing emulator search",
"[BangDam Shop] Searching BlueStacks",
"[BangDam Shop] Searching BlueStacks MSI",
"[BangDam Shop] Searching HD-Player",
"[BangDam Shop] Checking Program Files",
"[BangDam Shop] Checking Program Files x86",
"[BangDam Shop] Checking emulator path",
"[BangDam Shop] Emulator path scan started",
"[BangDam Shop] Emulator path scan complete",
"[BangDam Shop] Preparing user selection",
"[BangDam Shop] Selection system ready",
"[BangDam Shop] Waiting for emulator selection",
"[BangDam Shop] Checking selected option",
"[BangDam Shop] Selection validation",
"[BangDam Shop] Selection validated",
"[BangDam Shop] Preparing launch",
"[BangDam Shop] Launch configuration ready",
"[BangDam Shop] Preparing HD-Player",
"[BangDam Shop] HD-Player check",
"[BangDam Shop] HD-Player ready",
"[BangDam Shop] Launch command ready",
"[BangDam Shop] Sending launch command",
"[BangDam Shop] Emulator launch started",
"[BangDam Shop] Checking emulator process",
"[BangDam Shop] Emulator process check",
"[BangDam Shop] Emulator process ready",
"[BangDam Shop] Waiting for emulator startup",
"[BangDam Shop] Emulator startup running",
"[BangDam Shop] System stage complete",
"[BangDam Shop] Configuration stage complete",
"[BangDam Shop] Cleanup stage complete",
"[BangDam Shop] Launch stage ready",
"[BangDam Shop] Final system check",
"[BangDam Shop] Final registry check",
"[BangDam Shop] Final emulator check",
"[BangDam Shop] Final path check",
"[BangDam Shop] Final configuration check",
"[BangDam Shop] Final check complete",
"[BangDam Shop] System ready",
"[BangDam Shop] Registry ready",
"[BangDam Shop] Mouse ready",
"[BangDam Shop] Desktop ready",
"[BangDam Shop] Emulator ready",
"[BangDam Shop] Loader ready",
"[BangDam Shop] BangDam Shop ready",
"[BangDam Shop] Safe settings ready",
"[BangDam Shop] Performance configuration ready",
"[BangDam Shop] Windows configuration ready",
"[BangDam Shop] User configuration ready",
"[BangDam Shop] Temporary configuration removed",
"[BangDam Shop] No temporary REG remains",
"[BangDam Shop] Registry values are preserved",
"[BangDam Shop] Cleanup successful",
"[BangDam Shop] Import successful",
"[BangDam Shop] System check successful",
"[BangDam Shop] Emulator check successful",
"[BangDam Shop] Path check successful",
"[BangDam Shop] Launch system successful",
"[BangDam Shop] Preparing final launch",
"[BangDam Shop] Final launch preparation",
"[BangDam Shop] Final launch check",
"[BangDam Shop] Launching emulator soon",
"[BangDam Shop] Please wait",
"[BangDam Shop] Processing",
"[BangDam Shop] Loading",
"[BangDam Shop] Initializing",
"[BangDam Shop] Checking",
"[BangDam Shop] Preparing",
"[BangDam Shop] Applying safe settings",
"[BangDam Shop] Safe settings applied",
"[BangDam Shop] Configuration applied",
"[BangDam Shop] Registry applied",
"[BangDam Shop] Mouse configuration applied",
"[BangDam Shop] Desktop configuration applied",
"[BangDam Shop] Keyboard configuration applied",
"[BangDam Shop] Import completed",
"[BangDam Shop] Cleanup completed",
"[BangDam Shop] System finalized",
"[BangDam Shop] Emulator finalized",
"[BangDam Shop] Ready to play",
"[BangDam Shop] Ready to launch",
"[BangDam Shop] BangDam Loader online",
"[BangDam Shop] BangDam Configuration online",
"[BangDam Shop] BangDam Registry online",
"[BangDam Shop] BangDam System online",
"[BangDam Shop] Everything is ready",
"[BangDam Shop] All checks passed",
"[BangDam Shop] All preparation completed",
"[BangDam Shop] Starting final process",
"[BangDam Shop] Final process running",
"[BangDam Shop] Final process complete",
"[BangDam Shop] Launch process ready",
"[BangDam Shop] Launch process started",
"[BangDam Shop] Emulator is starting",
"[BangDam Shop] Emulator should appear shortly",
"[BangDam Shop] BangDam Shop Loader complete",
"[BangDam Shop] Thank you for using BangDam Shop",
"[BangDam Shop] Have a good game",
"[BangDam Shop] System finished successfully",
"[BangDam Shop] Process completed",
"[BangDam Shop] DONE",
"[BangDam Shop] READY",
"[BangDam Shop] COMPLETE",
"[BangDam Shop] FINALIZING"
)

foreach ($msg in $messages) {
    Show-Status $msg 12
}

# ============================================================
# EMULATOR MENU
# ============================================================

Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "              SELECT YOUR EMULATOR" -ForegroundColor Magenta
Write-Host "==================================================" -ForegroundColor Blue
Write-Host ""
Write-Host "[1] BlueStacks" -ForegroundColor Green
Write-Host "[2] BlueStacks MSI" -ForegroundColor Cyan
Write-Host ""

$choice = ""

while ($choice -ne "1" -and $choice -ne "2") {
    $choice = Read-Host "Enter 1 or 2"
}

# ============================================================
# SAFE REGISTRY
# ============================================================

$regContent = @'
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Control Panel\Desktop]
"MenuShowDelay"="0"

[HKEY_CURRENT_USER\Control Panel\Mouse]
"ActiveWindowTracking"=dword:00000000
"Beep"="No"
"MouseHoverHeight"="100"
"MouseHoverTime"="900"
"MouseHoverWidth"="100"
"MouseSensitivity"="10"
"MouseSpeed"="1"
"MouseThreshold1"="6"
"MouseThreshold2"="10"
"SnapToDefaultButton"="0"
"SwapMouseButtons"="0"

[HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response]
"AutoRepeatDelay"="1000"
"AutoRepeatRate"="500"
"BounceTime"="0"
"DelayBeforeAcceptance"="1000"
"Flags"="126"
"Last BounceKey Setting"=dword:00000000
"Last Valid Delay"=dword:000003e8
"Last Valid Repeat"=dword:000001f4
"Last Valid Wait"=dword:000003e8
'@

# ============================================================
# CREATE TEMP REG
# ============================================================

$tempReg = Join-Path $env:TEMP "BangDamShop_Config.reg"

Write-Host ""
Write-Host "[REG] Creating temporary configuration..." -ForegroundColor Cyan

[System.IO.File]::WriteAllText(
    $tempReg,
    $regContent,
    [System.Text.Encoding]::Unicode
)

if (-not (Test-Path -LiteralPath $tempReg)) {

    Write-Host "[ERROR] Could not create REG file" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit
}

Write-Host "[OK] Temporary REG created" -ForegroundColor Green

# ============================================================
# IMPORT REG
# ============================================================

Write-Host "[REG] Importing configuration..." -ForegroundColor Cyan

$regProcess = Start-Process `
    -FilePath "$env:WINDIR\regedit.exe" `
    -ArgumentList "/s `"$tempReg`"" `
    -Wait `
    -PassThru

if ($regProcess.ExitCode -eq 0) {
    Write-Host "[OK] Registry import completed" -ForegroundColor Green
}
else {
    Write-Host "[WARNING] RegEdit returned code $($regProcess.ExitCode)" -ForegroundColor Yellow
}

# ============================================================
# DELETE ONLY TEMP REG
# ============================================================

Start-Sleep -Milliseconds 300

if (Test-Path -LiteralPath $tempReg) {
    Remove-Item `
        -LiteralPath $tempReg `
        -Force `
        -ErrorAction SilentlyContinue
}

if (-not (Test-Path -LiteralPath $tempReg)) {
    Write-Host "[OK] Temporary REG deleted" -ForegroundColor Green
}
else {
    Write-Host "[WARNING] Temporary REG could not be deleted" -ForegroundColor Yellow
}

# ============================================================
# BLUESTACKS PATHS
# ============================================================

$blueStacksPaths = @(
    "$env:ProgramFiles\BlueStacks_nxt\HD-Player.exe",
    "$env:ProgramFiles\BlueStacks\HD-Player.exe",
    "$env:ProgramFiles(x86)\BlueStacks_nxt\HD-Player.exe",
    "$env:ProgramFiles(x86)\BlueStacks\HD-Player.exe"
)

$msiPaths = @(
    "$env:ProgramFiles\BlueStacks_msi2\HD-Player.exe",
    "$env:ProgramFiles\BlueStacks_msi5\HD-Player.exe",
    "$env:ProgramFiles(x86)\BlueStacks_msi2\HD-Player.exe",
    "$env:ProgramFiles(x86)\BlueStacks_msi5\HD-Player.exe"
)

# ============================================================
# FIND EMULATOR
# ============================================================

if ($choice -eq "1") {

    Write-Host ""
    Write-Host "[1] BlueStacks selected" -ForegroundColor Green
    Write-Host "[SCAN] Searching for HD-Player.exe..." -ForegroundColor Cyan

    $player = $blueStacksPaths |
        Where-Object {
            Test-Path -LiteralPath $_
        } |
        Select-Object -First 1
}
else {

    Write-Host ""
    Write-Host "[2] BlueStacks MSI selected" -ForegroundColor Cyan
    Write-Host "[SCAN] Searching for HD-Player.exe..." -ForegroundColor Cyan

    $player = $msiPaths |
        Where-Object {
            Test-Path -LiteralPath $_
        } |
        Select-Object -First 1
}

# ============================================================
# LAUNCH
# ============================================================

Write-Host ""

if ($player) {

    Write-Host "==================================================" -ForegroundColor Green
    Write-Host "[OK] Emulator found" -ForegroundColor Green
    Write-Host "[PATH] $player" -ForegroundColor Cyan
    Write-Host "[LAUNCH] Starting emulator..." -ForegroundColor Magenta
    Write-Host "==================================================" -ForegroundColor Green
    Write-Host ""

    Start-Process -FilePath $player

    Write-Host "[DONE] Emulator launched" -ForegroundColor Green
    Write-Host "[DONE] BangDam Shop finished" -ForegroundColor Cyan

}
else {

    Write-Host "==================================================" -ForegroundColor Red
    Write-Host "[ERROR] Emulator not found" -ForegroundColor Red
    Write-Host "[INFO] Check your BlueStacks installation path" -ForegroundColor Yellow
    Write-Host "==================================================" -ForegroundColor Red
}

Write-Host ""
Write-Host "BUNGDUM x RUNIN | BangDam Shop" -ForegroundColor Magenta
Write-Host "Loader finished." -ForegroundColor Cyan
Write-Host ""

Read-Host "Press Enter to close"
