:: update git repos from github

call init.bat

git pull
cd ladder99-ce && git pull && git checkout develop && cd ..
cd client-lockheed && git pull && cd ..

pause
