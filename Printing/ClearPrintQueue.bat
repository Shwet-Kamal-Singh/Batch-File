@echo off
:: Stop the Print Spooler service
net stop spooler

:: Delete all print jobs in the print spooler queue
del /Q %systemroot%\System32\spool\printers\*

:: Start the Print Spooler service
net start spooler

:: Print spooler has been reset.
pause
