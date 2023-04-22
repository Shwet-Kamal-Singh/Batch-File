@echo off

:: This batch file disables visual effects to free up system resources and improve performance.

:: Using the "sysdm.cpl" command to open the System Properties window.
sysdm.cpl

:: Selecting the "Advanced" tab and clicking the "Settings" button under "Performance".

:: Choosing the "Adjust for best performance" option and clicking "OK".

:: Prompting the user to restart the computer to apply the changes.

:: Pausing the batch file to prevent it from closing automatically and to allow the user to restart the computer.
pause
