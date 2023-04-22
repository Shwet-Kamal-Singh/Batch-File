@echo off
:: This script locks the workstation using the Rundll32 command.

:: Set the title and color of the console window.
title Lock Workstation
color 0A

:: Use the Rundll32 command to lock the workstation.
%windir%\System32\Rundll32.exe user32.dll,LockWorkStation

:: Wait for the user to press a key before closing the console window.
pause >nul
