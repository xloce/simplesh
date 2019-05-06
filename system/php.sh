#!/bin/bash

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
php-mysql \
apache2 \
libapache2-mod-php7.2 \
php7.2 \
php7.2-xml \
php7.2-gd;

# Setup composer (see https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md)
if [ ! $(which composer) ]; then 
	EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
	
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

	ACTUAL_SIGNATURE="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

	if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
	then
	    >&2 echo 'ERROR: Invalid installer signature'
	    rm composer-setup.php
	    echo "Failed to setup composer for php"
	fi

	php composer-setup.php --quiet
	RESULT=$?
	rm composer-setup.php
fi

}
