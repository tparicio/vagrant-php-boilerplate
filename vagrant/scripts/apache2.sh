#!/bin/bash

echo "================= APACHE2 $(date +"%r") ================="
echo " "
echo "BEGIN installing and configuring apache2 ..."

#install nginx
if [ ! -d "/etc/apache2" ]; then
    echo "... Installing apache2 packages ..."
    apt-get -y install php apache2 libapache2-mod-php >> /vagrant/vm_build.log > /vagrant/logs/apache2.log 2>&1
fi

echo "... Enabling mod-rewrite ..."
a2enmod rewrite >> /vagrant/vm_build.log > /vagrant/logs/apache2.log 2>&1

echo "... Allowing Apache override to all ..."
sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

echo "... Setting document root to public directory ..."
rm -rf /var/www/html
ln -fs $2/public /var/www/html

echo "... We definitly need to see the PHP errors, turning them on ..."
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/$1/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/$1/apache2/php.ini


if [ -f "/vagrant/configs/virtualhost.conf" ]; then
  echo "... Creating apache2 virtualhost ...\n"
  sudo cp /vagrant/configs/virtualhost.conf /etc/apache2/sites-available/symfony.conf
  sudo a2ensite symfony.conf
else 
  echo "... No virtualhost found ..."
fi 

# restart apache
sudo service apache2 reload > /vagrant/logs/apache2.log 2>&1

echo "... End installing and configuring apache2"
echo " "
echo "================= FINISH APACHE2 $(date +"%r") ================="
echo " "
