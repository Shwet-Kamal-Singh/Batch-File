@ECHO OFF

:: References:
:: WHOAMI Command: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/whoami
:: FIND Command: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/find
:: Well-known security identifiers in Windows operating systems: https://support.microsoft.com/en-us/help/243330/well-known-security-identifiers-in-windows-operating-systems

:: Check if the user is a member of the administrators group
WHOAMI /GROUPS | FIND "S-1-16-12288" > nul
IF NOT ERRORLEVEL 1 (
  ECHO The User Does Have Administrative Privileges
) ELSE (
  ECHO The User Does Not Have Administrative Privileges
)

PAUSE
