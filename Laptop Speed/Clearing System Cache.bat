@echo off

:: This batch file clears the system cache to free up memory and improve performance.

:: Using the "ipconfig /flushdns" command to clear the DNS resolver cache.
ipconfig /flushdns

:: Using the "netsh winsock reset" command to reset the Winsock catalog.
netsh winsock reset

:: Using the "netsh int ip reset" command to reset the TCP/IP stack.
netsh int ip reset

:: Prompting the user to restart the computer to complete the cache clearing process.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to restart the computer.
pause
