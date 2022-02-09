:: start ladder99 adapter as a service
:: must run this file as administrator

cd %USERPROFILE%\Desktop\ladder99

call init.bat

nssm install "Ladder99 Adapter" node ladder99-ce\services\adapter\src\adapter.js
nssm start "Ladder99 Adapter"

pause

