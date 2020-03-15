#!/bin/bash
###Prevent interactive prompts for session.
export DEBIAN_FRONTEND=noninteractive
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y &&
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list &&
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y &&
sudo apt full-upgrade
