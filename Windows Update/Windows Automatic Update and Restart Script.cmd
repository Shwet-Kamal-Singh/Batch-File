@echo off
:: This script automatically installs Windows updates and restarts the computer.

:: Set the wait time to 30 minutes (1800 seconds)
SET WaitTime=1800

:: Scan for updates
%systemroot%\system32\UsoClient.exe StartScan

:: Wait for scan to complete
timeout /t %WaitTime%

:: Download updates
%systemroot%\system32\UsoClient.exe StartDownload

:: Wait for downloads to complete
timeout /t %WaitTime%

:: Install updates
%systemroot%\system32\UsoClient.exe StartInstall

:: Wait for installations to complete
timeout /t %WaitTime%

:: Restart the computer
shutdown /r /t 0 /c "Restart after force install updates by script"
