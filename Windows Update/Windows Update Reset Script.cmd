:: Stop Windows Update and BITS services
net stop wuauserv
net stop bits

:: Delete the SoftwareDistribution folder
rmdir /S /Q %windir%\softwaredistribution

:: Register Windows Update DLLs
regsvr32 /s WUAPI.DLL
regsvr32 /s WUAUENG.DLL
regsvr32 /s WUAUENG1.DLL
regsvr32 /s ATL.DLL
regsvr32 /s WUCLTUI.DLL
regsvr32 /s WUPS.DLL
regsvr32 /s WUPS2.DLL
regsvr32 /s WUWEB.DLL
 
:: Start Windows Update and BITS services
net start wuauserv
net start bits

:: Reset Windows Update authorization and detect new updates
wuauclt.exe /resetauthorization /detectnow

:: Pause the script so that you can review any output or error messages
pause
