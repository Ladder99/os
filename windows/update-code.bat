:: update git repos from github

cd %LADDER99% && %GIT% pull
cd ladder99-ce && %GIT% pull && %GIT% checkout develop && cd ..
cd %SETUP% && %GIT% pull && cd ..

@pause
