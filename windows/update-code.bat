:: update git repos from github

:: note: the first time git is run from PortableGit, it will ask which
:: credential manager to use - use the default selection of manager-core,
:: and check the box for always use this selection. 
:: this will use the version of github credential manager core that 
:: comes with PortableGit.
:: it allows you to pull from a private repo without having to re-enter
:: your username and passcode every time.

cd %LADDER99%\ladder99-ce && %GIT% pull && %GIT% checkout develop
cd %LADDER99%\%SETUP% && %GIT% pull
cd %LADDER99%\os && %GIT% pull

@pause
