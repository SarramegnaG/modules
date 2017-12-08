#!/bin/bash

# Change ubuntu password
sudo usermod --password $(echo ubuntu | openssl passwd -1 -stdin) ubuntu

# Locales
sed -i 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
# echo 'LANG=nl_BE.UTF-8' > /etc/default/locale

# Timezone
timedatectl set-timezone Europe/Paris
dpkg-reconfigure -f noninteractive tzdata

# Host file
echo 127.0.0.1 $APP_DOMAIN >> /etc/hosts

# Sync package index files
apt update
apt upgrade -y
