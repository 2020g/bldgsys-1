sudo pacman -S --noconfirm dialog
sudo pacman -S --noconfirm wpa_supplicant
# to configure the wifi network disconnect the network wire and install the wifi antenna
sudo wifi-menu
sudo netctl enable wlan0-FM-BldgSys-R24-1
