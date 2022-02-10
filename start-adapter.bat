:: start ladder99 adapter as a service
:: must run this file as administrator

::cd %USERPROFILE%\Desktop\ladder99

::call init.bat

:: need CD here as without an absolute path Windows will look
:: for the application in C:\Windows

%NSSM% install "%SERVICE%" %NODE% %LADDER99%\ladder99-ce\services\adapter\src\adapter.js
%NSSM% set "%SERVICE%" AppStdout %LADDER99%\logs\service.log
%NSSM% set "%SERVICE%" AppStderr %LADDER99%\logs\service-error.log
%NSSM% start "%SERVICE%"

@pause

