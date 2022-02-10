:: start ladder99 adapter as a service
:: must run this file as administrator

cd %USERPROFILE%\Desktop\ladder99

::call init.bat

:: need CD here as without an absolute path Windows will look
:: for the application in C:\Windows

%NSSM% install %SERVICE% node %CD%\ladder99-ce\services\adapter\src\adapter.js
%NSSM% set %SERVICE% AppStdout %CD%\service.log
%NSSM% set %SERVICE% AppStderr %CD%\service-error.log
%NSSM% start %SERVICE%

@pause

