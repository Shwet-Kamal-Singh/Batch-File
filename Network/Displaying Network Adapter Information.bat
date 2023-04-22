@ECHO OFF
:: Display information about all installed network adapters
wmic nic get name, index, netconnectionid, macaddress, speed, driverdate, driverversion
