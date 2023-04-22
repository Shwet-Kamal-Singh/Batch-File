@ECHO OFF
:: Display all open listening ports on the system
netstat -an | find /i "listening"
