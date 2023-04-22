@echo off

:: This batch file turns off the Windows Firewall.

:: Displaying a message to indicate that the Windows Firewall is being turned off.
echo Turning off Windows Firewall...

:: Using the "netsh" command to turn off the Windows Firewall for all profiles.
netsh advfirewall set allprofiles state off

:: Displaying a message to indicate that the Windows Firewall has been turned off.
echo Windows Firewall has been turned off.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to view the results.
pause
