#!/bin/bash

echo "================= INSTALL-PHP.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing utilities"

# install some common utilities
echo "... Installing PHP $1 and modules ..."

echo "... Importing key, adding PHP repo and updating ..."
sudo add-apt-repository ppa:ondrej/php > /dev/null 2>&1
sudo apt-get update -y > /dev/null 2>&1

sudo apt-get -qq install php$1 > /dev/null 2>&1
sudo apt-get -qq install php$1-fpm php-pear php$1-curl php$1-dev php$1-gd php$1-mbstring php$1-zip php$1-mysql php$1-xml > /dev/null 2>&1


echo "\n... Installing composer ..."
curl -Ss https://getcomposer.org/installer | php > /dev/null 2>&1
mv composer.phar /usr/bin/composer

echo "... Configure git ..."
git config --global user.email $3
git config --global user.name $4


echo "... END installing PHP $1 and modules ..."
echo " "
echo "================= FINISH INSTALL-PHP.SH $(date +"%r") ================="
echo " "
