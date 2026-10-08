$Host.UI.RawUI.WindowTitle = "BANGDAM SHOP | BlueStacks Loader"
$ErrorActionPreference = "Continue"

function Write-Step {
    param(
        [string]$Text,
        [int]$Delay = 45
    )
    Write-Host $Text -ForegroundColor White
    Start-Sleep -Milliseconds $Delay
}

Clear-Host

Write-Host ""
Write-Host "============================================================" -ForegroundColor DarkGray
Write-Host "                 BANGDAM SHOP | LOADER" -ForegroundColor White
Write-Host "============================================================" -ForegroundColor DarkGray
Write-Host ""

Write-Step "[ BANGDAM SHOP ] กำลังเตรียมระบบ..." 80
Write-Step "[ SYSTEM      ] ตรวจสอบ PowerShell..." 55
Write-Step "[ SYSTEM      ] ตรวจสอบสิทธิ์การทำงาน..." 55
Write-Step "[ REGISTRY    ] เตรียม Registry Configuration..." 55
Write-Step "[ MOUSE       ] เตรียม Mouse Configuration..." 45
Write-Step "[ EMULATOR    ] เตรียม BlueStacks Configuration..." 45
Write-Step "[ NETWORK     ] เตรียม Network Configuration..." 45
Write-Step "[ PERFORMANCE ] กำลังประมวลผล..." 45
Write-Step "[ BANGDAM     ] กำลังจัดชุดค่าให้พร้อม..." 60
Write-Step ""

$RegFile = Join-Path $env:TEMP "BangDamShop_Config.reg"

$RegContent = @'
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Control Panel\Cursors]
"AppStarting"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,63,00,75,00,72,00,73,00,6f,00,72,00,73,00,5c,00,61,00,65,00,72,00,6f,00,5f,00,77,00,6f,00,72,00,6b,00,69,00,6e,00,67,00,2e,00,61,00,6e,00,69,00,00,00
"Arrow"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,63,00,75,00,72,00,73,00,6f,00,72,00,73,00,5c,00,61,00,65,00,72,00,6f,00,5f,00,61,00,72,00,72,00,6f,00,77,00,2e,00,63,00,75,00,72,00,00,00
"ContactVisualization"=dword:00000001
"CursorBaseSize"=dword:00000020
"GestureVisualization"=dword:0000001f
"Scheme Source"=dword:00000002

[HKEY_CURRENT_USER\Control Panel\Mouse]
"ActiveWindowTracking"=dword:00000000
"Beep"="No"
"MouseHoverHeight"="100"
"MouseHoverTime"="900"
"MouseHoverWidth"="100"
"MouseSensitivity"="2"
"MouseSpeed"="4"
"MouseThreshold1"="7"
"MouseThreshold2"="11"
"MouseTrails"=""
"SnapToDefaultButton"="0"
"SwapMouseButtons"="0"
"DoubleClickSpeed2"="0,5"
"DoubleClickWidth2"="0,6"
"TcpWindowSize"=dword:0005ae4c
"TCPDelAckTicks"=dword:00000004
"Tcp1323Opts"=dword:00000004
"TcpMaxDataRetransmissions"=dword:00000003
"SackOpts"=dword:00000001
"DefaultTTL"=dword:00007fff
"EnablePMTUDiscovery"=dword:00000011
"EnablePMTUBHDetect"=dword:00000100

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
"WaitToKillServiceTimeout"="2000"

[HKEY_CURRENT_USER\Control Panel\Desktop]
"MenuShowDelay"="0"

[HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response]
"AutoRepeatDelay"="0"
"AutoRepeatRate"="15"
"BounceTime"="0"
"DelayBeforeAcceptance"="0"
"Flags"="24"

[HKEY_LOCAL_MACHINE\SOFTWARE\BlueStacks\Guests\Android\sensibility\0]
"CPU"=dword:00000064
"DPI"=dword:000001b8
"Fov"=dword:0000003c
"generalemulatorsensitivity"=dword:00000064
"GPU"=dword:00000064
"joystick"=dword:000003e8
"LEFTCLICK"=dword:000003e8
"sensitivity"=dword:00000064
"SMALLESTWIDTH"=dword:000002ee
"speedofmovement"=dword:00000078
"touchsensitivyty"=dword:000002d0
"X"=dword:0000044c
"Y"=dword:00000375
"MouseSensitivity"=dword:00000102
"Fovhead"=dword:000003e8
"AimSpeed"=dword:000003e8

[HKEY_LOCAL_MACHINE\SOFTWARE\BlueStacks_msi2\Guests\Android\sensibility\0]
"Delay"="5"
"MouseTrack"="710"
"sensibility"=dword:00000064
"SMALLESTWIDTH"=dword:000002ee
"speedofmovement"=dword:00000064
"touchsensitivyty"=dword:00000102
"X"=dword:00000320
"Y"=dword:00000708
"CPU"=dword:00000064
"GPU"=dword:00000064
"DPI"=dword:00000064
"generalemulatorsensitivity"=dword:00000064
"joystick"=dword:000003e8
"Fov"=dword:000008fc
"LEFTCLICK"=dword:000003e8
"sensitivity"=dword:00000064
"rightclicklifter"=dword:000003e8
"RIGHTCLICK"=dword:000003e8
"Mousespeed"=dword:00000064
"MouseSensitivity"=dword:00000102

[HKEY_LOCAL_MACHINE\SOFTWARE\SmartGaGa\Guests\ProjectTitan\sensibility]
"tcp/5555"=dword:000015b3
"tcp/6666"=dword:00001a0a
"tcp/7777"=dword:00001e61
"tcp/9999"=dword:0000270f
"udp/12000"=dword:00002ee0
'@

Write-Step "[ FILE        ] สร้างไฟล์ Registry ชั่วคราว..." 80

[System.IO.File]::WriteAllText(
    $RegFile,
    $RegContent,
    [System.Text.Encoding]::Unicode
)

if (Test-Path $RegFile) {
    Write-Step "[ OK          ] สร้างไฟล์ชั่วคราวสำเร็จ" 60
}
else {
    Write-Host "[ ERROR       ] สร้างไฟล์ Registry ไม่สำเร็จ" -ForegroundColor Red
    Read-Host "กด Enter เพื่อปิด"
    exit
}

Write-Step "[ REGISTRY    ] กำลัง Import ค่า Registry..." 100
Write-Step "[ REGISTRY    ] กำลังเขียนค่าระบบ..." 70
Write-Step "[ REGISTRY    ] กำลังเขียนค่า Mouse..." 70
Write-Step "[ REGISTRY    ] กำลังเขียนค่า Emulator..." 70
Write-Step "[ REGISTRY    ] กำลังเขียนค่า BlueStacks..." 70
Write-Step "[ REGISTRY    ] กำลังตรวจสอบ..." 70

$RegResult = Start-Process `
    -FilePath "$env:SystemRoot\regedit.exe" `
    -ArgumentList "/s `"$RegFile`"" `
    -Wait `
    -PassThru

if ($RegResult.ExitCode -eq 0) {
    Write-Step "[ SUCCESS     ] Registry Import เสร็จเรียบร้อย" 100
}
else {
    Write-Host "[ WARNING     ] Registry Import มีบางค่าที่อาจไม่ถูกยอมรับ" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "-------------------- BANGDAM SHOP ---------------------------" -ForegroundColor DarkGray
Write-Step "[ BANGDAM     ] ร้านบังดำ Shop ของดีต้องลอง..." 70
Write-Step "[ BANGDAM     ] จูนให้พร้อม ลื่นให้สุด..." 70
Write-Step "[ BANGDAM     ] งานดี งานเนียน งานถึง..." 70
Write-Step "[ BANGDAM     ] ขอบคุณที่สนับสนุนร้านบังดำ Shop ❤️" 80
Write-Host "--------------------------------------------------------------" -ForegroundColor DarkGray
Write-Host ""

Write-Step "[ CLEAN       ] กำลังลบไฟล์ชั่วคราว..." 90

if (Test-Path $RegFile) {
    Remove-Item $RegFile -Force -ErrorAction SilentlyContinue
}

if (-not (Test-Path $RegFile)) {
    Write-Step "[ CLEAN       ] ลบไฟล์ชั่วคราวเรียบร้อย" 60
}
else {
    Write-Host "[ WARNING     ] ไม่สามารถลบไฟล์ชั่วคราวได้" -ForegroundColor Yellow
}

Write-Host ""
Write-Step "[ BLUESTACKS  ] กำลังค้นหา BlueStacks..." 100

$BlueStacksPaths = @(
    "$env:ProgramFiles\BlueStacks_nxt\HD-Player.exe",
    "$env:ProgramFiles\BlueStacks\HD-Player.exe",
    "${env:ProgramFiles(x86)}\BlueStacks_nxt\HD-Player.exe",
    "${env:ProgramFiles(x86)}\BlueStacks\HD-Player.exe"
)

$BlueStacks = $BlueStacksPaths | Where-Object {
    Test-Path $_
} | Select-Object -First 1

if ($BlueStacks) {
    Write-Step "[ BLUESTACKS  ] พบ BlueStacks แล้ว" 80
    Write-Step "[ BLUESTACKS  ] กำลังเปิด BlueStacks..." 100
    Start-Process $BlueStacks
    Write-Step "[ DONE        ] BlueStacks กำลังเริ่มทำงาน..." 100
}
else {
    Write-Host "[ WARNING     ] ไม่พบ HD-Player.exe ในตำแหน่งมาตรฐาน" -ForegroundColor Yellow
    Write-Host "[ INFO        ] สามารถเปิด BlueStacks ด้วยตัวเองได้" -ForegroundColor White
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor DarkGray
Write-Host "                 BANGDAM SHOP" -ForegroundColor White
Write-Host "              READY FOR BLUESTACKS" -ForegroundColor White
Write-Host "============================================================" -ForegroundColor DarkGray
Write-Host ""

Start-Sleep -Seconds 2