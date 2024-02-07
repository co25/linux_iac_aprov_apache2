#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
echo "apache instalado!"

sudo apt-get install unzip -y
echo "unzip instalado!"

sudo wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

sudo unzip /tmp/main.zip 
sudo cp -R /tmp/linux-site-dio-main/* /var/www/html/
sudo systemctl start apache2

echo "pode acessar!"


