#!/bin/bash

echo "================= NGINX $(date +"%r") ================="
echo " "
echo "BEGIN installing and configuring nginx ..."

#install nginx
if [ ! -d "/etc/nginx" ]; then
	echo "Applying nginx/development repo and updating packages ..."
	sudo apt-add-repository -y ppa:nginx/development > /vagrant/logs/nginx.log 2>&1
	sudo apt-get -y update > /vagrant/logs/nginx.log 2>&1
	echo "... Installing nginx ..."
	sudo apt-get -y install nginx > /vagrant/logs/nginx.log 2>&1
fi

echo "... Configuring nginx ..."
# copy our modified nginx default site config to the vm
sudo cp /vagrant/config/nginx-default /etc/nginx/sites-available/default

# restart nginx
sudo service nginx restart > /vagrant/logs/nginx.log 2>&1

echo "... End installing and configuring nginx."
echo " "
echo "================= FINISH NGINX $(date +"%r") ================="
echo " "
