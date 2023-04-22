@echo off

:: Disable Windows Update
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f

:: Disable driver updates
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableDeviceDriverUpdates" /t REG_DWORD /d "1" /f

echo Windows update and driver update have been disabled.
pause
