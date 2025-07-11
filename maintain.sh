#!/bin/bash

echo -e "\e[34m"
cat << "EOF"
                 _       _        _             _     
 _ __ ___   __ _(_)_ __ | |_ __ _(_)_ __    ___| |__  
| '_ ` _ \ / _` | | '_ \| __/ _` | | '_ \  / __| '_ \ 
| | | | | | (_| | | | | | || (_| | | | | |_\__ \ | | |
|_| |_| |_|\__,_|_|_| |_|\__\__,_|_|_| |_(_)___/_| |_|
                                                      
EOF

echo -e "\e[0m"
echo A simple script to maintain your arch install



echo
echo
echo


echo -e "\e[34m"
echo "RUNNING PACMAN SYSTEM UPGRADE"
echo -e "\e[0m"
sleep 1
sudo pacman -Syu --noconfirm

echo
echo
echo

echo -e "\e[34m"
echo "RUNNING YAY PACKAGE UPGRADE"
echo -e "\e[0m"
sleep 1
yay -Syu --noconfirm

echo
echo
echo

#-------------------------
echo -e "\e[34m"
echo "CLEANING PACMAN CACHE"
echo -e "\e[0m"
sudo pacman -Sc --noconfirm

echo
echo
echo

echo -e "\e[34m"
echo "REMOVING ORPHANED PACKAGES" 
echo -e "\e[0m"
sleep 1
sudo pacman -Rns $(pacman -Qdtq)

echo
echo
echo
