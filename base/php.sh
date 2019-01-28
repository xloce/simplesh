#/bin/bash

php.sh() {

clear;

sudo apt update
sudo apt upgrade

# Setup necessary packages for php, composer and laravel installations
sudo apt install -y \
php \
php-curl \
php-zip \
php-mbstring \
php-phar-io-manifest \
mysql-server \
apache2 \
libapache2-mod-php7.2 \
php7.2 \
php7.2-xml \
php7.2-gd;

}
