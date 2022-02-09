:: stop ladder99 adapter service
:: must run this file as administrator

cd %USERPROFILE%\Desktop\ladder99

call init.bat

nssm stop "Ladder99 Adapter"
nssm remove "Ladder99 Adapter" confirm

pause
