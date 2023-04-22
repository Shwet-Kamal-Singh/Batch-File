@echo off
:: This script checks the disk for errors using chkdsk.

:: Set the title and color of the console window.
title Check disk
color 0A

:: Run chkdsk with no arguments to check the disk.
chkdsk

:: Wait for the user to press a key before closing the console window.
pause >nul
