#!/bin/bash

echo "BEGIN Set VM timezone and perform some cleanup pre-install ..."

# set server timezone
echo $1 | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

# a little housekeeping
echo "... Doing a little housekeeping ..."
sudo apt-get -y update --fix-missing > /dev/null 2>&1
sudo apt-get -y upgrade > /dev/null 2>&1
sudo apt-get -y dist-upgrade > /dev/null 2>&1
sudo apt-get -y update > /dev/null 2>&1

echo "... END Set VM timezone and perform some cleanup pre-install."
echo " "
