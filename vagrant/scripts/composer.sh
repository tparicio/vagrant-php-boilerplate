#!/bin/bash

echo "================= COMPOSER.SH $(date +"%r") ================="
echo " "

# install some common utilities
echo "... Installing composer packages ..."

if [ -f /usr/bin/composer ]; then
    composer require phpmd/phpmd friendsofphp/php-cs-fixer squizlabs/php_codesniffer > /vagrant/logs/composer.log 2>&1
fi

echo " "
echo "================= FINISH COMPOSER.SH $(date +"%r") ================="
echo " "
