# Post installation
echo "Run this script as ALARM only."
echo "Post installation."
echo "Install & configure Archlinux/XFCE on Odroid-C2"
echo "You can hit Ctrl+c in next 5 seconds if you don't want to continue."
sleep 5
sudo localectl set-locale LANG=en_US.UTF-8
sudo timedatectl set-timezone America/Montreal
sudo localedef -f UTF-8 -i en_US en_US.UTF-8
cd /etc
sudo wget -N https://raw.githubusercontent.com/2020m/bldgsys/master/locale.gen
sudo locale-gen
sudo hostnamectl set-hostname FM-BldgSys-E0000
sudo pacman -S --noconfirm xorg-xinit 
sudo pacman -S --noconfirm xorg-server 
sudo pacman -S --noconfirm xfce4
sudo pacman -S --noconfirm lightdm
sudo pacman -S --noconfirm lightdm-gtk-greeter
cd /etc/lightdm
sudo wget -N https://raw.githubusercontent.com/2020m/bldgsys/master/lightdm.conf
sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service
