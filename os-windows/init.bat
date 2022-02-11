:: initialize environment variables
:: must run as administrator

:: note: when run this file as admin, 
::   CD evaluates to C:\Windows\System32.
::   USERPROFILE evaluates to C:\Users\ODYSSEY (at least for my winbox).

:: set variables local to this file
set SETUP=client-lockheed
set LADDER99=%SYSTEMDRIVE%\ladder99

:: now write them to registry also
setx SETUP %SETUP%
setx LADDER99 %LADDER99%

:: service name
setx SERVICE "Ladder99 Adapter"

:: binaries
setx NODE %LADDER99%\bin\node-v16.13.2-win-x64\node.exe
setx AGENT %LADDER99%\bin\cppagent-1.8.0.2-win64\bin\agent.exe
setx NSSM %LADDER99%\bin\nssm-2.24\win64\nssm.exe
setx GIT %LADDER99%\bin\PortableGit\cmd\git.exe

:: adapter uses these to know where to read data from.
:: /m writes to the system (machine) environment variables.
:: that way, adapter window service can read them.
::setx /m L99_SETUP_FOLDER %LADDER99%\%SETUP%
::setx /m L99_MODULES_FOLDER %LADDER99%\ladder99-ce\modules
:: yeah this is crazy
:: set vars local to this file
set L99_SETUP_FOLDER=%LADDER99%\%SETUP%
set L99_MODULES_FOLDER=%LADDER99%\ladder99-ce\modules
:: set normal user registry
setx L99_SETUP_FOLDER %L99_SETUP_FOLDER%
setx L99_MODULES_FOLDER %L99_MODULES_FOLDER%
:: set machine-wide registry
setx /m L99_SETUP_FOLDER %L99_SETUP_FOLDER%
setx /m L99_MODULES_FOLDER %L99_MODULES_FOLDER%

@echo.
@echo Make sure you run this as administrator, and that the last
@echo values got written correctly.
@echo.
@pause
