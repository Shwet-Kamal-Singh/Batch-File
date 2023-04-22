@echo off
:: This script displays disk usage information for the specified drive or folder.

:: Prompt the user to enter the drive letter or folder path to check.
set /p drive_or_folder=Enter drive letter or folder path: 

:: Check if the input is a valid drive letter or folder path.
if not exist %drive_or_folder% (
    echo Invalid drive letter or folder path.
    pause
    exit
)

:: Display the disk usage information for the specified drive or folder.
echo Disk usage information for %drive_or_folder%:
dir /s %drive_or_folder% | find "File(s)"
dir /s %drive_or_folder% | find "Dir(s)"
dir /s %drive_or_folder% | find "bytes free"
pause
