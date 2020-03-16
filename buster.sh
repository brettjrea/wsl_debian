#!/bin/bash
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
### Update sources.list
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
### Preseed restart without asking.
echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
### Full upgrade
sudo apt full-upgrade
