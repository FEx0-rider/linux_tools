#!/bin/bash

# Balíčky z oficiálních repozitářů
PACMAN_PACKAGES=(
  aircrack-ng arp-scan arpwatch atftp axel bettercap binwalk bully cabextract cadaver
  capstone cherrytree chntpw cifs-utils cilium-cli cosign cowpatty cryptsetup curl
  curlftpfs darkstat ddrescue dos2unix dsniff eksctl ethtool ettercap exiv2 expect
  exploitdb ext3grep ext4magic fcrackzip flashrom foremost fping fwbuilder ghidra git
  glibc gnuradio hackrf hashcat hashcat-utils hashdeep hcxtools hivex httrack hydra
  i2c-tools impacket inspectrum iodine iw jadx john kismet libewf libnfc libpst lynis
  macchanger masscan mc mdk4 medusa mfoc minicom mitmproxy multimon-ng nasm nbtscan
  ncrack net-snmp net-tools netsniff-ng nfs-utils ngrep nikto nmap openocd openssh
  openvpn p0f p7zip pdfcrack pixiewps plocate proxychains-ng ptunnel python-pip
  python-virtualenv radare2 rdesktop reaver recordmydesktop rfdump rkhunter ropper
  samba scapy siege sleuthkit slowhttptest socat spike sqlmap ssdeep sslh sslscan
  sslsplit swaks syft tcpdump tcpflow tcpreplay testdisk tftp-hpa thc-ipv6 tmux tnftp
  traceroute trivy unhide util-linux vim vpnc wget wgetpaste whois wifite yara zim zsh
  zsh-autosuggestions zsh-syntax-highlighting
)

# Balíčky z AURu
AUR_PACKAGES=(
  hyperion ophcrack proxmark3 routersploit rz-ghidra testssl.sh wpscan zaproxy
)

# Instaluje balíčky z oficiálních repozitářů
echo "==> Instalace balíčků z oficiálních repozitářů pomocí pacman..."
sudo pacman -S --needed "${PACMAN_PACKAGES[@]}"

# Kontrola a instalace yay (AUR helper)
echo "==> Kontrola přítomnosti yay..."
if ! command -v yay &>/dev/null; then
  echo "yay není nainstalován. Instaluji yay z AUR..."
  git clone https://aur.archlinux.org/yay.git
  cd yay || exit
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

# Instalace AUR balíčků
echo "==> Instalace AUR balíčků pomocí yay..."
yay -S --needed "${AUR_PACKAGES[@]}"

# Instalace Sherlock z GitHubu
echo "==> Instalace Sherlock z GitHubu..."
if [ ! -d "sherlock" ]; then
  git clone https://github.com/sherlock-project/sherlock.git
  cd sherlock || exit
  sudo python3 -m pip install -r requirements.txt
  echo "==> Sherlock byl nainstalován do $(pwd)"
  cd ..
else
  echo "==> Adresář 'sherlock' už existuje. Přeskočeno."
fi

echo "✅ Vše hotovo!"
