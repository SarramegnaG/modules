#!/bin/bash

# Install mysql
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt install mysql-server -y

# Install mycli
apt install python-pip -y
pip install --upgrade pip
pip install mycli