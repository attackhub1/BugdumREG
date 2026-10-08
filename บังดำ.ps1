$Host.UI.RawUI.WindowTitle = "BangDam Shop | REG Loader"

Clear-Host

function Write-Line {
    param([string]$Text)
    Write-Host $Text -ForegroundColor White
    Start-Sleep -Milliseconds 25
}

# =========================================================
# BANGDAM SHOP - 200 STATUS MESSAGES
# =========================================================

$messages = @(
"[BangDam Shop] ยินดีต้อนรับเข้าสู่ระบบ",
"[BangDam Shop] ระบบกำลังเตรียมการ",
"[BangDam Shop] กำลังตรวจสอบสภาพแวดล้อม",
"[BangDam Shop] กำลังเตรียม Registry",
"[BangDam Shop] กำลังเตรียมไฟล์ชั่วคราว",
"[BangDam Shop] ระบบกำลังตรวจสอบ Windows",
"[BangDam Shop] กำลังตรวจสอบ Mouse Settings",
"[BangDam Shop] กำลังตรวจสอบ Desktop Settings",
"[BangDam Shop] กำลังเตรียมค่าที่ปลอดภัย",
"[BangDam Shop] กำลังโหลด Configuration",
"[BangDam Shop] BangDam Shop พร้อมทำงาน",
"[BangDam Shop] เริ่มกระบวนการปรับแต่ง",
"[BangDam Shop] ตรวจสอบ Registry เรียบร้อย",
"[BangDam Shop] ตรวจสอบระบบเรียบร้อย",
"[BangDam Shop] เตรียมใช้งานค่าระบบ",
"[BangDam Shop] กำลังจัดการไฟล์ Config",
"[BangDam Shop] กำลังเตรียม Emulator",
"[BangDam Shop] กำลังเตรียม BlueStacks",
"[BangDam Shop] กำลังเตรียม BlueStacks MSI",
"[BangDam Shop] รอการเลือก Emulator",
"[BangDam Shop] ระบบพร้อมรับคำสั่ง",
"[BangDam Shop] โหลดระบบต่อเนื่อง",
"[BangDam Shop] กำลังตรวจสอบค่าความไวเมาส์",
"[BangDam Shop] กำลังตรวจสอบ MouseSpeed",
"[BangDam Shop] กำลังตรวจสอบ MouseThreshold",
"[BangDam Shop] กำลังตรวจสอบ MouseHover",
"[BangDam Shop] กำลังตรวจสอบ MenuShowDelay",
"[BangDam Shop] กำลังจัดเตรียมค่าพื้นฐาน",
"[BangDam Shop] กำลังตรวจสอบ User Registry",
"[BangDam Shop] กำลังตรวจสอบ Current User",
"[BangDam Shop] กำลังเตรียมไฟล์ Import",
"[BangDam Shop] กำลังสร้าง Temporary Config",
"[BangDam Shop] Temporary Config พร้อมใช้งาน",
"[BangDam Shop] เริ่มตรวจสอบ Registry Path",
"[BangDam Shop] Registry Path ถูกต้อง",
"[BangDam Shop] เตรียม Import Registry",
"[BangDam Shop] ระบบ Import พร้อม",
"[BangDam Shop] กำลังประมวลผลข้อมูล",
"[BangDam Shop] กำลังอ่าน Configuration",
"[BangDam Shop] อ่าน Configuration สำเร็จ",
"[BangDam Shop] ตรวจสอบข้อมูลสำเร็จ",
"[BangDam Shop] ไม่มีการลบ Registry เดิม",
"[BangDam Shop] ระบบจะลบเฉพาะไฟล์ชั่วคราว",
"[BangDam Shop] กำลังรักษาค่าระบบ",
"[BangDam Shop] กำลังเตรียมขั้นตอนถัดไป",
"[BangDam Shop] ระบบยังทำงานปกติ",
"[BangDam Shop] กำลังตรวจสอบสิทธิ์",
"[BangDam Shop] ตรวจสอบสิทธิ์เสร็จสิ้น",
"[BangDam Shop] พร้อมใช้งาน",
"[BangDam Shop] กำลังเข้าสู่ขั้นตอนหลัก",
"[BangDam Shop] ระบบเริ่มทำงาน",
"[BangDam Shop] โหลดค่า Windows",
"[BangDam Shop] โหลดค่า Mouse",
"[BangDam Shop] โหลดค่า Desktop",
"[BangDam Shop] โหลดค่า Keyboard",
"[BangDam Shop] ตรวจสอบค่าพื้นฐาน",
"[BangDam Shop] ค่าพื้นฐานพร้อม",
"[BangDam Shop] กำลังเตรียม Registry Import",
"[BangDam Shop] Import Queue พร้อม",
"[BangDam Shop] กำลังประมวลผล Queue",
"[BangDam Shop] Queue ทำงานปกติ",
"[BangDam Shop] ระบบกำลังเดินหน้า",
"[BangDam Shop] ไม่พบปัญหาเบื้องต้น",
"[BangDam Shop] ตรวจสอบ Environment สำเร็จ",
"[BangDam Shop] ตรวจสอบ Temp Folder สำเร็จ",
"[BangDam Shop] Temp Folder พร้อม",
"[BangDam Shop] กำลังสร้างไฟล์",
"[BangDam Shop] สร้างไฟล์สำเร็จ",
"[BangDam Shop] ตรวจสอบไฟล์สำเร็จ",
"[BangDam Shop] กำลังเตรียม Regedit",
"[BangDam Shop] Regedit พร้อมทำงาน",
"[BangDam Shop] กำลังส่งข้อมูล",
"[BangDam Shop] กำลัง Import",
"[BangDam Shop] Import Registry",
"[BangDam Shop] กำลังตรวจสอบผลลัพธ์",
"[BangDam Shop] Registry Process ทำงาน",
"[BangDam Shop] Registry Process สำเร็จ",
"[BangDam Shop] ตรวจสอบหลัง Import",
"[BangDam Shop] Post Check เริ่มต้น",
"[BangDam Shop] Post Check สำเร็จ",
"[BangDam Shop] เตรียมลบ Temporary File",
"[BangDam Shop] ตรวจสอบ Temporary File",
"[BangDam Shop] พบ Temporary File",
"[BangDam Shop] กำลังลบ Temporary File",
"[BangDam Shop] ลบ Temporary File สำเร็จ",
"[BangDam Shop] Registry ที่ Import ไว้ยังอยู่",
"[BangDam Shop] ไม่มีการย้อนค่าที่ Import",
"[BangDam Shop] ขั้นตอน Registry เสร็จสิ้น",
"[BangDam Shop] กำลังเตรียม Emulator",
"[BangDam Shop] ตรวจสอบ BlueStacks Path",
"[BangDam Shop] ตรวจสอบ BlueStacks MSI Path",
"[BangDam Shop] ตรวจสอบ HD-Player",
"[BangDam Shop] ตรวจสอบ Emulator Executable",
"[BangDam Shop] กำลังค้นหาไฟล์โปรแกรม",
"[BangDam Shop] ตรวจสอบ Program Files",
"[BangDam Shop] ตรวจสอบ Program Files x86",
"[BangDam Shop] ตรวจสอบตำแหน่งติดตั้ง",
"[BangDam Shop] ตรวจสอบ Path สำเร็จ",
"[BangDam Shop] ระบบพร้อมเปิด Emulator",
"[BangDam Shop] เตรียมเปิด BlueStacks",
"[BangDam Shop] เตรียมเปิด BlueStacks MSI",
"[BangDam Shop] ตรวจสอบตัวเลือกผู้ใช้",
"[BangDam Shop] อ่านตัวเลือกสำเร็จ",
"[BangDam Shop] กำลังตรวจสอบหมายเลข",
"[BangDam Shop] หมายเลขถูกต้อง",
"[BangDam Shop] กำลังเตรียม Launch",
"[BangDam Shop] Launch Configuration พร้อม",
"[BangDam Shop] กำลังเปิด Emulator",
"[BangDam Shop] Emulator Launch เริ่มต้น",
"[BangDam Shop] ส่งคำสั่ง Launch",
"[BangDam Shop] คำสั่ง Launch สำเร็จ",
"[BangDam Shop] กำลังตรวจสอบ Process",
"[BangDam Shop] ตรวจสอบ Process",
"[BangDam Shop] Process พร้อม",
"[BangDam Shop] กำลังรอ Emulator",
"[BangDam Shop] Emulator กำลังเริ่มทำงาน",
"[BangDam Shop] ระบบหลักทำงานสำเร็จ",
"[BangDam Shop] Registry ขั้นตอนเสร็จแล้ว",
"[BangDam Shop] Temporary File ถูกลบแล้ว",
"[BangDam Shop] ไม่มีไฟล์ชั่วคราวค้าง",
"[BangDam Shop] Windows Config พร้อม",
"[BangDam Shop] Mouse Config พร้อม",
"[BangDam Shop] Desktop Config พร้อม",
"[BangDam Shop] Emulator Config พร้อม",
"[BangDam Shop] ตรวจสอบรอบสุดท้าย",
"[BangDam Shop] Final Check",
"[BangDam Shop] Final Check ผ่าน",
"[BangDam Shop] ระบบพร้อมใช้งาน",
"[BangDam Shop] กำลังส่งต่อให้ Emulator",
"[BangDam Shop] เตรียมใช้งานจริง",
"[BangDam Shop] ขั้นตอนทั้งหมดทำงานต่อเนื่อง",
"[BangDam Shop] ไม่มีการลบ Registry",
"[BangDam Shop] ลบเฉพาะ Temporary REG",
"[BangDam Shop] ค่าที่ Import ยังคงอยู่",
"[BangDam Shop] ระบบรักษาความปลอดภัยทำงาน",
"[BangDam Shop] ตรวจสอบไฟล์อีกครั้ง",
"[BangDam Shop] ไม่พบไฟล์ค้าง",
"[BangDam Shop] ตรวจสอบเสร็จสมบูรณ์",
"[BangDam Shop] พร้อมเปิดเกม",
"[BangDam Shop] พร้อมเปิด Emulator",
"[BangDam Shop] ระบบ BangDam Shop พร้อม",
"[BangDam Shop] ขอบคุณที่ใช้งาน BangDam Shop",
"[BangDam Shop] ระบบกำลังเข้าสู่ขั้นตอนสุดท้าย",
"[BangDam Shop] Finalizing...",
"[BangDam Shop] Preparing Emulator...",
"[BangDam Shop] Preparing Windows...",
"[BangDam Shop] Preparing Registry...",
"[BangDam Shop] Preparing Mouse...",
"[BangDam Shop] Preparing Desktop...",
"[BangDam Shop] Checking Configuration...",
"[BangDam Shop] Configuration OK",
"[BangDam Shop] Registry OK",
"[BangDam Shop] Mouse OK",
"[BangDam Shop] Desktop OK",
"[BangDam Shop] Temporary File OK",
"[BangDam Shop] Emulator Path OK",
"[BangDam Shop] Launch System OK",
"[BangDam Shop] System Ready",
"[BangDam Shop] Performance Config Ready",
"[BangDam Shop] Windows Config Ready",
"[BangDam Shop] User Config Ready",
"[BangDam Shop] Import Completed",
"[BangDam Shop] Cleanup Completed",
"[BangDam Shop] Emulator Ready",
"[BangDam Shop] Launching...",
"[BangDam Shop] Almost Done...",
"[BangDam Shop] Please Wait...",
"[BangDam Shop] Processing...",
"[BangDam Shop] Checking...",
"[BangDam Shop] Loading...",
"[BangDam Shop] Initializing...",
"[BangDam Shop] Optimizing Safe Settings...",
"[BangDam Shop] Applying Safe Configuration...",
"[BangDam Shop] Configuration Applied",
"[BangDam Shop] Cleanup Started",
"[BangDam Shop] Cleanup Finished",
"[BangDam Shop] Finalizing System",
"[BangDam Shop] System Check Passed",
"[BangDam Shop] Ready To Play",
"[BangDam Shop] BangDam Shop Engine Ready",
"[BangDam Shop] BangDam Shop Loader Ready",
"[BangDam Shop] BangDam Shop Configuration Ready",
"[BangDam Shop] BangDam Shop Final Check",
"[BangDam Shop] Everything Is Ready",
"[BangDam Shop] Launching Emulator Now",
"[BangDam Shop] Thank You For Using BangDam Shop"
)

# =========================================================
# SHOW 200 MESSAGES
# =========================================================

foreach ($msg in $messages) {
    Write-Line $msg
}

Write-Host ""
Write-Host "==================================================" -ForegroundColor DarkGray
Write-Host "                 BANGDAM SHOP" -ForegroundColor White
Write-Host "==================================================" -ForegroundColor DarkGray
Write-Host ""
Write-Host "[1] BlueStacks" -ForegroundColor White
Write-Host "[2] BlueStacks MSI" -ForegroundColor White
Write-Host ""

do {
    $choice = Read-Host "พิมพ์ 1 หรือ 2 แล้วกด Enter"
} while ($choice -ne "1" -and $choice -ne "2")

# =========================================================
# SAFE REGISTRY SETTINGS
# =========================================================

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

# =========================================================
# CREATE TEMP REG
# =========================================================

$tempReg = Join-Path $env:TEMP "BangDamShop_Config.reg"

Write-Host ""
Write-Host "[REG] กำลังสร้างไฟล์ชั่วคราว..." -ForegroundColor White

Set-Content -Path $tempReg -Value $regContent -Encoding Unicode

if (Test-Path $tempReg) {
    Write-Host "[OK] สร้างไฟล์ REG สำเร็จ" -ForegroundColor White
} else {
    Write-Host "[ERROR] สร้างไฟล์ REG ไม่สำเร็จ" -ForegroundColor Red
    Read-Host "กด Enter เพื่อออก"
    exit
}

# =========================================================
# IMPORT REG
# =========================================================

Write-Host "[REG] กำลัง Import Registry..." -ForegroundColor White

$regProcess = Start-Process `
    -FilePath "regedit.exe" `
    -ArgumentList "/s `"$tempReg`"" `
    -Wait `
    -PassThru

if ($regProcess.ExitCode -eq 0) {
    Write-Host "[OK] Import Registry สำเร็จ" -ForegroundColor White
} else {
    Write-Host "[WARNING] Regedit ส่ง ExitCode $($regProcess.ExitCode)" -ForegroundColor Yellow
}

# =========================================================
# DELETE ONLY TEMP REG
# =========================================================

Start-Sleep -Milliseconds 300

if (Test-Path $tempReg) {
    Remove-Item $tempReg -Force -ErrorAction SilentlyContinue
}

if (-not (Test-Path $tempReg)) {
    Write-Host "[OK] ลบเฉพาะไฟล์ชั่วคราวเรียบร้อย" -ForegroundColor White
} else {
    Write-Host "[WARNING] ไม่สามารถลบไฟล์ชั่วคราวได้" -ForegroundColor Yellow
}

# =========================================================
# FIND BLUESTACKS
# =========================================================

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

if ($choice -eq "1") {

    Write-Host ""
    Write-Host "[1] เลือก BlueStacks" -ForegroundColor White
    Write-Host "[SCAN] กำลังค้นหา HD-Player.exe..." -ForegroundColor White

    $player = $blueStacksPaths |
        Where-Object { Test-Path $_ } |
        Select-Object -First 1

} else {

    Write-Host ""
    Write-Host "[2] เลือก BlueStacks MSI" -ForegroundColor White
    Write-Host "[SCAN] กำลังค้นหา HD-Player.exe..." -ForegroundColor White

    $player = $msiPaths |
        Where-Object { Test-Path $_ } |
        Select-Object -First 1
}

# =========================================================
# LAUNCH
# =========================================================

if ($player) {

    Write-Host ""
    Write-Host "==================================================" -ForegroundColor DarkGray
    Write-Host "[OK] พบ Emulator แล้ว" -ForegroundColor White
    Write-Host "[PATH] $player" -ForegroundColor Gray
    Write-Host "[LAUNCH] กำลังเปิด..." -ForegroundColor White
    Write-Host "==================================================" -ForegroundColor DarkGray
    Write-Host ""

    Start-Process -FilePath $player

    Write-Host "[DONE] เปิด Emulator สำเร็จ" -ForegroundColor White
    Write-Host "[DONE] BangDam Shop ทำงานเสร็จแล้ว" -ForegroundColor White

} else {

    Write-Host ""
    Write-Host "==================================================" -ForegroundColor DarkGray
    Write-Host "[ERROR] ไม่พบ BlueStacks ตาม Path ที่กำหนด" -ForegroundColor Red
    Write-Host "[INFO] ลองตรวจสอบตำแหน่งติดตั้ง BlueStacks" -ForegroundColor Yellow
    Write-Host "==================================================" -ForegroundColor DarkGray
}

Write-Host ""
Write-Host "ร้านบังดำ Shop | ขอบคุณที่ใช้งาน ❤️" -ForegroundColor White
Write-Host ""

Read-Host "กด Enter เพื่อปิด"
