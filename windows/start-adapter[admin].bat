:: start ladder99 adapter as a service
:: must run this file as administrator

:: note: need LADDER99 in these as an absolute path - otherwise Windows will 
:: look for the application in C:\Windows.

:: register the service
%NSSM% install "%SERVICE%" %NODE% %LADDER99%\ladder99-ce\services\adapter\src\adapter.js

:: settings
:: set login to Network Service, as it mostly just has network permissions
%NSSM% set "%SERVICE%" ObjectName "Network Service" ""
%NSSM% set "%SERVICE%" AppStdout %LADDER99%\os\windows\adapter.log
%NSSM% set "%SERVICE%" AppStderr %LADDER99%\os\windows\adapter-error.log

:: run the service
%NSSM% start "%SERVICE%"

@pause
