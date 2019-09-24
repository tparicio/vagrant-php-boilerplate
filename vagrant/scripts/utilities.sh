#!/bin/bash

echo "================= INSTALL-UTILITIES.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing utilities"

# install some common utilities
echo "... Installing miscellaneous/common utilities ..."

sudo apt-get -qq install wget > /dev/null 2>&1
sudo apt-get -qq install curl > /dev/null 2>&1
sudo apt-get -qq install zip > /dev/null 2>&1
sudo apt-get -qq install unzip > /dev/null 2>&1
sudo apt-get -qq install iptables > /dev/null 2>&1
sudo apt-get -qq install debconf-utils > /dev/null 2>&1
sudo apt-get -qq install software-properties-common > /dev/null 2>&1

echo "... END installing utilities."
echo " "
echo "================= FINISH INSTALL-UTILITIES.SH $(date +"%r") ================="
echo " "
