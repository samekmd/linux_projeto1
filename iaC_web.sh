#!/bin/bash

echo "Iniciando Script..."

echo "Atualizando sistema"
apt-get update
apt-get upgrade -y

echo "Baixando Apache"
apt-get install apache2 -y

echo "Baixando unzip"
apt-get install unzip -y

echo "Removendo index.html"
cd /var/www/html
rm -r index.html

echo "Baixando diretório"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Movendo Diretório para /html"
cp -R  linux-site-dio-main/* /var/www/html 

