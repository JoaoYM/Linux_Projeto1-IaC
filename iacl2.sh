#!/bin/bash

echo "Realizando atualização do servidor"

apt-get update
apt-get upgrade -y 

echo "Instalando pacote Apache2"

apt-get install apache2 -y

cd /var/www/html
rm index.html -y
cd / -y


echo "Instalando pacote UnZip"

apt-get install unzip -y

echo "Realizando download aplicação 'Site Web' "

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando arquivo e movendo para o diretório padrão do Apache"

unzip main.zip

cd linux-site-dio-main

cp  -R * /var/www/html/ 

echo "Finalizado"
