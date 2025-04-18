#!/bin/bash

# Aktualizace repozitářů
echo "Updating..."
sudo apt update

echo
# Instalace nástrojů
echo "Installing..."
echo

sudo apt install -y aircrack-ng
git clone https://github.com/t3l3machus/psudohash # Password list generator
git clone https://github.com/owerdogan/whoami-project  # Web anonimaiser
sudo apt install -y sqlmap
sudo apt install -y nmap
sudo apt install -y metasploit-framework
sudo apt install -y hydra
sudo apt install -y john
sudo apt install -y nikto
sudo apt install -y wireshark
sudo apt install -y burpsuite
sudo apt install -y ettercap-text-only
sudo apt install -y netcat
sudo apt install -y hydra-gtk
sudo apt install -y gobuster
sudo apt install -y wifite
sudo apt install -y airgeddon
sudo apt install -y gobuster
sudo apt install -y dirbuster
sudo apt install -y exiftool


echo
echo "Installed"
