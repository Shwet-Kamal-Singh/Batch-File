@echo off

:: This batch file cleans up temporary files.

:: Displaying a message to indicate that the cleanup process has started.
echo Cleaning up temporary files...

:: Using the "del" command to delete temporary files in the system's temporary folder.
del /q %temp%\*.*

:: Displaying a message to indicate that the cleanup process has finished.
echo Temporary files have been cleaned up.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to view the results.
pause
