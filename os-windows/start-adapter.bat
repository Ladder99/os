:: start ladder99 adapter as a service
:: must run this file as administrator

:: need LADDER99 here as an absolute path, as otherwise Windows will look
:: for the application in C:\Windows.

%NSSM% install "%SERVICE%" %NODE% %LADDER99%\ladder99-ce\services\adapter\src\adapter.js
%NSSM% set "%SERVICE%" AppStdout %LADDER99%\os-windows\adapter.log
%NSSM% set "%SERVICE%" AppStderr %LADDER99%\os-windows\adapter-error.log
%NSSM% start "%SERVICE%"

@pause
