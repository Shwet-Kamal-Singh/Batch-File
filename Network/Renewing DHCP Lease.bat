@ECHO OFF
:: Renew DHCP lease on all network adapters
ipconfig /release
ipconfig /renew
