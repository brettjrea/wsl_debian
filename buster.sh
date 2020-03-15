#!/bin/bash
###Prevent interactive prompts for session.
export DEBIAN_FRONTEND=noninteractive
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
### Switch repos from stretch to buster.
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y 
### Full upgrade
sudo apt full-upgrade
