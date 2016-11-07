# Pre installation
echo "Pre installation"
echo "Install & configure Archlinux/XFCE"
echo "Run this script as root only."
echo "You can hit Ctrl+c in next 5 seconds if you don't want to continue."
sleep 5
pacman-key --init
pacman -Syu --noconfirm
sleep 2
pacman -S --noconfirm sudo
sleep 2
pacman -S --noconfirm wget
cd /etc
wget -N https://raw.githubusercontent.com/2020m/bldgsys/master/sudoers
echo "Pre installation completed / Please exit and login with ALARM."
