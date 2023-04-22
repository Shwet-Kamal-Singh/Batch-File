@echo off

:: References:
:: whoami command:
:: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/whoami
:: findstr command:
:: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/findstr
:: icacls command:
:: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/icacls

echo Checking security of Windows...

:: Check the current user's security privileges
whoami /all | findstr /i "BUILTIN\Administrators BUILTIN\Users" > nul
if errorlevel 1 (
  echo You are not a member of the Administrators or Users group.
) else (
  echo You are a member of the Administrators or Users group.
)

:: Check the permissions on the System32 folder
echo Checking permissions on the System32 folder...
icacls %windir%\System32 > %temp%\permissions.txt
start notepad %temp%\permissions.txt

:: Wait for the user to close the permissions file
echo Close the permissions file to continue...
pause > nul

:: Check the system event log for recent security events
echo Checking the system event log...
wevtutil qe system /f:text /c:5 /rd:true /q:"*[System[(EventID=4624)]]" > %temp%\events.txt
start notepad %temp%\events.txt

:: Wait for the user to close the event log file
echo Close the event log file to continue...
pause > nul

echo Done.
