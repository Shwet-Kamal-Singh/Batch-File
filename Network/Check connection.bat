:: Check connection
@echo OFF

:: Set window title to "Check connection"
title Check connection

:: Clear console screen
cls

:: Print message to console
echo Please wait...

:: Ping Google's website once, sending output to null
ping -n 1 www.google.com >nul

:: If the errorlevel is not 1, go to :noerror label
if not errorlevel 1 goto :noerror

:: If the errorlevel is 1, go to :error label
if errorlevel 1 goto :error

:noerror
:: Print message to console
echo Connection successful !

:: Pause the console, waiting for any key to be pressed
pause >nul

:: Exit the batch file
exit

:error
:: Print message to console
echo No connection :(

:: Pause the console, waiting for any key to be pressed
pause >nul

:: Exit the batch file
exit
