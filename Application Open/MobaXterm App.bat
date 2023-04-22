@echo off
:: Change the current directory to where MobaXterm is installed
cd "C:\Program Files (x86)\Mobatek\MobaXterm"

:: Display a message to the user
echo Starting MobaXterm in safe mode

:: Launch MobaXterm in safe mode
start MobaXterm.EXE /safe

:: Pause the script to allow the user to read the output
pause
