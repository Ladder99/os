:: initialize environment variables
:: must run as administrator

:: client config folder
setx SETUP client-lockheed
setx LADDER99 %USERPROFILE%\Desktop\ladder99

:: service name
setx SERVICE "Ladder99 Adapter"

:: binaries
setx NODE %USERPROFILE%\bin\node-v16.13.2-win-x64\node.exe
setx AGENT %USERPROFILE%\bin\cppagent-1.8.0.2-win64\bin\agent.exe
setx NSSM %USERPROFILE%\bin\nssm-2.24\win64\nssm.exe
setx GIT %USERPROFILE%\bin\PortableGit\cmd\git.exe

:: adapter uses these to know where to read data from.
:: /m writes to the system (machine) environment variables.
:: that way, adapter window service can read them.
setx /m L99_SETUP_FOLDER %LADDER99%\%SETUP%
setx /m L99_MODULES_FOLDER %LADDER99%\ladder99-ce\modules

@echo.
@echo Make sure you run this as administrator, and that the last two
@echo values got written correctly.
@echo.
@pause
