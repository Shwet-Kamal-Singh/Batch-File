@echo off

rem Enable USB storage devices
reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v "Start" /t REG_DWORD /d "3" /f

rem Enable CD/DVD devices
reg add HKLM\SYSTEM\CurrentControlSet\Services\cdrom /v "Start" /t REG_DWORD /d "1" /f

echo "USB and CD/DVD devices have been enabled."

pause
