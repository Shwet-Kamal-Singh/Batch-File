@echo off

:: This batch file uses PowerShell to retrieve and display the firewall status for each profile.

:: Displaying a message to indicate that the firewall status check is starting.
echo Checking Firewall status...

:: Using PowerShell to get the firewall status for each profile.
powershell.exe -Command "& { Get-NetFirewallProfile | Format-Table Name,Enabled }"

:: Displaying a message to indicate that the firewall status check is complete.
echo Firewall status check complete.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to view the results.
pause
