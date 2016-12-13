#! /bin/bash

##  TESTED manualy execute on r407pc20 and then restored the old pasword

## TODO:
# chmod to the same rights

## save old password 
cp /etc/shadow /etc/shadowtgold

## Change te worker password
# in the hash string is "/" used so i used "+" for delimiting the sed comand
sed -i 's+.*worker.*+worker:$6$xURddMo5$Ub.B5kQXjz6HdIsiE64CQvKN2a3rNlDryob5GQPYnAtMSaopOTvuFiOKAi/.FoOPF93gZ90QiTfCvj6/GXGKF.:17086:0:99999:7:::+' /etc/shadow 

