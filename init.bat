:: initialize environment variables

:: client config folder
setx SETUP client-lockheed

:: service name
setx SERVICE "Ladder99 Adapter"

:: binaries
setx NODE %CD%\bin\node-v16.13.2-win-x64\node.exe
setx AGENT %CD%\bin\cppagent-1.8.0.2-win64\bin\agent.exe
setx NSSM %CD%\bin\nssm-2.24\win64\nssm.exe
setx GIT %CD%\bin\PortableGit\cmd\git.exe

:: adapter uses these to know where to read data from.
:: /m writes to the system (machine) environment variables.
:: that way, adapter window service can read them.
setx /m L99_SETUP_FOLDER %SETUP%
setx /m L99_MODULES_FOLDER ladder99-ce\modules

@echo.
@echo Make sure you run this as administrator, and that the last two
@echo values got written correctly.
@echo.
@pause
