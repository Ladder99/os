:: update git repos from github

cd %LADDER99%\ladder99-ce && %GIT% pull && %GIT% checkout develop
cd %LADDER99%\%SETUP% && %GIT% pull
cd %LADDER99%\os && %GIT% pull

@pause
