@echo off

:: This batch file runs a disk cleanup to remove temporary files and system junk.

:: Using the "cleanmgr" command to run a disk cleanup.
cleanmgr /sagerun:1

:: Displaying a message to indicate that the disk cleanup process has finished.
echo Disk cleanup completed.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to view the results.
pause
