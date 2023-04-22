@ECHO OFF
:: Display the DHCP server address for a specified network adapter
ipconfig /all | findstr /i dhcp\ server
