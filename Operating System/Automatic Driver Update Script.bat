@echo off
echo Starting driver scanning and updating process...

REM Set variables
set DeviceManager="%windir%\system32\devmgmt.msc"
set DevConURL="https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/devcon"

REM Open Device Manager
echo Opening Device Manager...
%DeviceManager%
echo Device Manager opened.

REM Scan for new hardware
echo Scanning for new hardware...
devcon.exe rescan
echo Scan complete.

REM Check for outdated drivers and update them
echo Checking for outdated drivers and updating them...
devcon.exe driverfiles ^=net^|findstr "Driver installed"
if %errorlevel%==0 (
    devcon.exe update %windir%\inf\*.inf ^=net^|findstr "1 device(s) updated"
) else (
    echo No outdated drivers found.
)

echo Driver scanning and updating process complete.
echo For more information on using DevCon, visit %DevConURL%
pause
