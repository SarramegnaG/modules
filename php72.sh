#!/bin/bash

# Install PHP 7.2
apt install python-software-properties -y
add-apt-repository ppa:ondrej/php
apt-get update

apt install php7.2-fpm php7.2-mysql php7.2-xml php7.2-intl php7.2-zip php7.2-mbstring php7.2-xdebug php7.2-curl php7.2-gd -y
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php/7.2/fpm/php.ini
sed -i "s/;date.timezone =/date.timezone = Europe\/Paris/g" /etc/php/7.2/{cli,fpm}/php.ini
service php7.2-fpm restart

# Install composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer