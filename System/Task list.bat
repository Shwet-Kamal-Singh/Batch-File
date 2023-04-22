@echo off
:: This script displays a list of running processes using tasklist.

:: Set the title and color of the console window.
title Process List
color 0A

:: Run tasklist to display a list of running processes.
tasklist

:: Wait for the user to press a key before closing the console window.
pause >nul
