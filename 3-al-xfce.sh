# Post installation
echo "Run this script as ALARM only."
echo "Post installation."
echo "Install & configure Archlinux/XFCE on Odroid-C2"
echo "You can hit Ctrl+c in next 5 seconds if you don't want to continue."
sleep 5
sudo localectl set-locale LANG=en_US.UTF-8
sudo timedatectl set-timezone America/Montreal
sudo localedef -f UTF-8 -i en_US en_US.UTF-8
#sudo pluma /etc/locale.gen add en_US en_US.UTF-8 and sudo locale-gen
sudo hostnamectl set-hostname FM-BldgSys-E0000
sudo pacman -S --noconfirm xorg-xinit 
sudo pacman -S --noconfirm xorg-server 
sudo pacman -S --noconfirm xfce4
sudo pacman -S --noconfirm lightdm
sudo pacman -S --noconfirm lightdm-gtk-greeter
sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service
