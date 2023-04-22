@echo off
:: This script transfers files from a source directory to a destination directory using xcopy.

:: Set variables for source and destination directories.
set source_dir=C:\source
set dest_dir=D:\destination

:: Use xcopy to copy files from the source directory to the destination directory.
echo Transferring files...
xcopy /s /e /i /h /y /v %source_dir%\* %dest_dir%

:: Verify that the transfer was successful.
echo Verifying transfer...
if exist %dest_dir%\* (
    echo Transfer was successful.
) else (
    echo Transfer failed.
)

pause
