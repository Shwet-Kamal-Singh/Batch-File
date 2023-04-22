@echo off

:: This batch file turns on the Windows Firewall.

:: Displaying a message to indicate that the Windows Firewall is being turned on.
echo Turning on Windows Firewall...

:: Using the "netsh" command to turn on the Windows Firewall for all profiles.
netsh advfirewall set allprofiles state on

:: Displaying a message to indicate that the Windows Firewall has been turned on.
echo Windows Firewall has been turned on.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to view the results.
pause
