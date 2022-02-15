:: initialize environment variables
:: must run as administrator

:: note: when run this file as admin, 
::   CD evaluates to C:\Windows\System32.
::   USERPROFILE evaluates to C:\Users\ODYSSEY (at least for my winbox).

:: adapter uses L99* vars to know where to read data from.

:: set this elsewhere - setx?
set SETUP=client-lockheed

:: set variables local to this file
set LADDER99=%SYSTEMDRIVE%\ladder99
set L99_SETUP_FOLDER=%LADDER99%\%SETUP%
set L99_MODULES_FOLDER=%LADDER99%\ladder99-ce\modules

:: set normal user registry
setx SETUP %SETUP%
setx LADDER99 %LADDER99%
setx L99_SETUP_FOLDER %L99_SETUP_FOLDER%
setx L99_MODULES_FOLDER %L99_MODULES_FOLDER%

:: set machine-wide registry
:: this way, adapter window service can read them
setx /m SETUP %SETUP%
setx /m LADDER99 %LADDER99%
setx /m L99_SETUP_FOLDER %L99_SETUP_FOLDER%
setx /m L99_MODULES_FOLDER %L99_MODULES_FOLDER%

:: service name
setx SERVICE "Ladder99 Adapter"

:: binaries
setx NODE %LADDER99%\os-windows\bin\node-v16.13.2-win-x64\node.exe
setx AGENT %LADDER99%\os-windows\bin\cppagent-1.8.0.2-win64\bin\agent.exe
setx NSSM %LADDER99%\os-windows\bin\nssm-2.24\win64\nssm.exe
setx GIT %LADDER99%\os-windows\bin\PortableGit\cmd\git.exe

@echo.
@echo Make sure you ran this as administrator.
@echo.
@pause
