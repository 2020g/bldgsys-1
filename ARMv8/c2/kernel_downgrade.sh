# Then add this line into [options] section in /etc/pacman.conf to prevent them from being upgraded
# IgnorePkg=linux-odroid-c2 linux-odroid-c2-headers

wget -N http://tardis.tiny-vps.com/aarm/packages/l/linux-odroid-c2-headers/linux-odroid-c2-headers-3.14.79-3-aarch64.pkg.tar.xz
wget -N http://tardis.tiny-vps.com/aarm/packages/l/linux-odroid-c2/linux-odroid-c2-3.14.79-3-aarch64.pkg.tar.xz
sudo pacman -U --noconfirm /home/alarm/linux-odroid-c2-3.14.79-3-aarch64.pkg.tar.xz /home/alarm/linux-odroid-c2-headers-3.14.79-3-aarch64.pkg.tar.xz
echo "The system will reboot in 5 seconds"
sleep 5
sudo reboot
