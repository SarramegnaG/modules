#!/bin/bash

# Install PHP 7.1
apt install python-software-properties -y
add-apt-repository ppa:ondrej/php
apt-get update

apt install php7.1-fpm php7.1-mysql php7.1-xml php7.1-intl php7.1-zip php7.1-mbstring php7.1-xdebug php7.1-curl php7.1-gd -y
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php/7.1/fpm/php.ini
sed -i "s/;date.timezone =/date.timezone = Europe\/Paris/g" /etc/php/7.1/{cli,fpm}/php.ini
service php7.1-fpm restart

# Install composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer