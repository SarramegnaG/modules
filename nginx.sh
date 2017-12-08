#!/bin/bash

# Install nginx
apt install nginx -y
rm /etc/nginx/sites-{available,enabled}/default
rm -f /var/www/html/index.nginx-debian.html

# Setup nginx config and restart it
ln -s /etc/nginx/sites-{available,enabled}/www.fps.dev
service nginx reload
