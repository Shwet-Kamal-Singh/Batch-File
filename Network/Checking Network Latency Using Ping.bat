@ECHO OFF
:: Check network latency by pinging a specified IP address or hostname and recording the results in a file
ping -t google.com >> pingtest.txt
