:: stop ladder99 adapter service
:: must run this file as administrator

%NSSM% stop "%SERVICE%"
%NSSM% remove "%SERVICE%" confirm

@pause
