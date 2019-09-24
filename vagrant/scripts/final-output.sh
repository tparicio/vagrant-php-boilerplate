#!/bin/bash

# some final housekeeping
sudo apt-get -y update --fix-missing > /dev/null
sudo apt-get -y autoremove > /dev/null
sudo apt-get -y clean > /dev/null

echo " "
echo "$1"
echo " "
echo "========================================================================"
echo " "
echo "http://$2 ($3)"
echo "remember add $3 $2 to your /etc/hosts"
echo " "
echo "Database Server Connection Info for External Connections "
echo "from Host Machine"
echo " "
echo "Server: $4"
echo "Port: 3306"
echo "User: root"
echo "Password: password"
echo " "
echo "========================================================================"
