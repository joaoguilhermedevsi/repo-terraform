#!/bin/bash
#Update no Sistema
sudo apt-get update -y
#Instalação do Nginx 
sudo apt-get install nginx -y
#Restartando o Nginx
sudo systemctl restart nginx
#Habilitando o Nginx ao Reiniciar o Sistem
sudo systemctl enable nginx

#Criando Diretorio
sudo mkdir -p /var/www/nginx/html
#Permissoes
sudo chown -R nginx:nginx /var/www/nginx/html

#Criando Diretorio
sudo mkdir -p /var/www/nginx/html

########################################   Desistalando PHP - Antes de Realizar a Instalação do PHP 7.3 ########################################
sudo apt-get remove --purge php* -y
sudo apt-get autoremove -y

########################################   Instalação do PHP 7.3   ########################################
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install -y php7.3 
sudo apt install php7.3-fpm php7.3-mysql -y

########################################   Instalação dos Modules do PHP - Extension  ########################################
sudo apt install -y php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json php7.3-redis
sudo apt-get install -y php-redis php-memcache 
sudo apt install php-redis -y

#Criando o arquivo index.html como teste
sudo echo 'Hello Tray Terraform' > /var/www/html/index.html

#Instalando o stress para realizar o teste de carga e Auto Scaling
sudo apt-get install stress -y