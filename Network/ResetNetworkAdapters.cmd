@echo off

:: Removes all user-configured IPv4 (Internet Protocol version 4) settings.
:: Restarting the computer is required before the default settings will take effect.
netsh int ipv4 reset

:: Removes all user-configured IPv6 (Internet Protocol version 6) settings
:: Restarting the computer is required before the default settings will take effect.
netsh int ipv6 reset

:: Restores the Windows Firewall with Advanced Security policy to the default policy. 
netsh advfirewall reset

:: Resets Winsock Catalog to a clean state
netsh winsock reset

:: Flush the DNS cache
ipconfig /flushdns

:: Pause the script to allow the user to read the output
pause

:: Restart the computer immediately to apply the default settings
shutdown /r /t 0
