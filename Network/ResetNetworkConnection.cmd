@echo off

:: Resets Winsock Catalog to a clean state
netsh winsock reset

:: Resets TCP/IP stack to default settings
netsh int ip reset

:: Clears the ARP (Address Resolution Protocol) cache
arp -d *

:: Clears the NetBIOS (Network Basic Input/Output System) name cache and the NetBIOS name table for the local computer
nbtstat -R
nbtstat -RR

:: Flushes the DNS (Domain Name System) cache
ipconfig /flushdns

:: Releases the current IP address configuration for all network adapters
ipconfig /release

:: Renews the IP address configuration for all network adapters
ipconfig /renew

:: Registers the DNS names and IP addresses for all network adapters
ipconfig /registerdns

pause
