:: update git repos from github

::call init.bat

cd %USERPROFILE%\Desktop\ladder99

%GIT% pull
cd ladder99-ce && %GIT% pull && %GIT% checkout develop && cd ..
cd client-lockheed && %GIT% pull && cd ..

@pause
