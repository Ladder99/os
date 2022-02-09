:: update git repos from github

call init.bat

cd ladder99-ce && git pull && git checkout develop && cd ..
cd client-lockheed && git pull && cd ..

pause
