@echo off
:: This script displays the RSoP using gpresult.

:: Set the title and color of the console window.
title Gpresult
color 0A

:: Run gpresult with the /z option to display the RSoP in verbose mode.
gpresult /z

:: Wait for the user to press a key before closing the console window.
pause >nul
