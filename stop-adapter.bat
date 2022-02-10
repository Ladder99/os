:: stop ladder99 adapter service
:: must run this file as administrator

cd %USERPROFILE%\Desktop\ladder99

call init.bat

nssm stop %SERVICE%
nssm remove %SERVICE% confirm

pause
