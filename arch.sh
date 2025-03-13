#!/bin/bash

# Aktualizace repozitářů
echo "Updating..."
sudo pacman -Syu --noconfirm

echo
# Instalace nástrojů
echo "Installing..."
echo

# Instalace nástrojů z oficiálních repozitářů
sudo pacman -S --noconfirm aircrack-ng
sudo pacman -S --noconfirm sqlmap
sudo pacman -S --noconfirm nmap
sudo pacman -S --noconfirm metasploit
sudo pacman -S --noconfirm hydra
sudo pacman -S --noconfirm john
sudo pacman -S --noconfirm nikto
sudo pacman -S --noconfirm wireshark-gtk  # nebo wireshark-qt
sudo pacman -S --noconfirm burpsuite
sudo pacman -S --noconfirm ettercap-gtk
sudo pacman -S --noconfirm gnu-netcat
sudo pacman -S --noconfirm gobuster
sudo pacman -S --noconfirm wifite
sudo pacman -S --noconfirm airgeddon
sudo pacman -S --noconfirm dirbuster
sudo pacman -S --noconfirm exiftool
sudo pacman -S --noconfirm git  # Přidáno, pokud nemáte nainstalováno git
sudo pacman -S --noconfirm burpsiute
sudo git clone https://aur.archlinux.org/yay.git
sudo pacman -S --noconfirm fern-wifi-cracker
sudo pacman -S --noconfirm tcpdump
sudo pacman -S --noconfirm hashcat
sudo pacman -S --noconfirm wordlists
sudo pacman -S --noconfirm man
sudo pacman -S --noconfirm neofetch



# Instalace nástrojů z AUR (pokud je potřeba, nainstalujte yay nebo jiný AUR helper)
if ! command -v yay &> /dev/null; then
    echo "yay není nainstalován. Instalace yay..."
    sudo pacman -S yay --noconfirm
fi

yay -S --noconfirm psudohash
yay -S --noconfirm whoami-project

echo
echo "Installed"
