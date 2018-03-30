#!/bin/bash

apt-get install -y apache2

a2dissite 000-default.conf

mkdir /var/log/$APP_DOMAIN

# Setup apache2 config and restart it
ln -s /etc/apache2/sites-{available,enabled}/$APP_DOMAIN.conf
service apache2 reload
