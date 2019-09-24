#!/bin/bash

echo "================= INSTALL-FRAMEWORK.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing framework"

# install some common utilities
echo "... Installing framework ..."


if [ $1 == 'symfony' ]; then
    echo "... Installing symfony ..."
    wget -q -nv https://get.symfony.com/cli/installer -O - | bash > /dev/null 2>&1
    sudo mv /root/.symfony/bin/symfony /usr/local/bin/symfony
    cd /var/wwww/sites
    symfony new $2
fi

echo "... END installing framework ..."
echo " "
echo "================= FINISH INSTALL-FRAMEWORK.SH $(date +"%r") ================="
echo " "
