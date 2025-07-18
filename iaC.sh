#!/bin/bash

echo "Iniciando Script..."
echo "Criando diretórios..."
mkdir /publico /adm /ven /sec


echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -6 1234) 
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -6 1234)

echo "Alocando usuários a grupos..."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Mudando dono do diretório ADM"
chown root:GRP_ADM /adm

echo "Mudando dono do diretório VEN"
chown root:GRP_VEN /ven

echo "Mudando dono do diretório SEC"
chown root:GRP_SEC /sec

echo "Mudando permissões do diretório ADM"
chmod 770 /adm

echo "Mudando permissões do diretório VEN"
chmod 770 /ven

echo "Mudando permissões do diretório SEC"
chmod 770 /sec

echo "Permissão total para diretório PUBLICO"
chmod 777 /publico
echo "...Finalizando Script"

