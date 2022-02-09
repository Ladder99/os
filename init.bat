:: initialize environment variables

:: client config folder
set SETUP=client-lockheed

:: adapter uses these to know where to read data from
set L99_SETUP_FOLDER=%SETUP%
set L99_MODULES_FOLDER=ladder99-ce\modules

:: binaries
@set PATH=..\bin\node-v16.13.2-win-x64;%PATH%
@set PATH=..\bin\cppagent-1.8.0.2-win64\bin;%PATH%
@set PATH=..\bin\nssm-2.24\win64;%PATH%
@set PATH=..\bin\PortableGit\cmd;%PATH%
