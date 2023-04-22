@echo off
:: This script checks the health of a hard disk using S.M.A.R.T. data.

:: Prompt the user to enter the drive letter of the disk to check.
set /p drive_letter=Enter drive letter to check (e.g. C:): 

:: Use WMIC to retrieve S.M.A.R.T. data.
echo Retrieving S.M.A.R.T. data...
WMIC /NAMESPACE:\\root\wmi PATH MSStorageDriver_FailurePredictStatus WHERE Active="true" GET PredictFailure, Reason | findstr /i /c:"%drive_letter%"

:: Check for potential issues.
echo Checking for potential issues...
WMIC /NAMESPACE:\\root\wmi PATH MSStorageDriver_FailurePredictStatus WHERE Active="true" GET PredictFailure | findstr /i "true"
if %errorlevel%==0 (
    echo Potential issues found on %drive_letter%. Please backup your data and consider replacing the disk.
) else (
    echo No potential issues found on %drive_letter%.
)

pause
