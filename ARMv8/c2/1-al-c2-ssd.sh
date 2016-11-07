# see https://archlinuxarm.org/platforms/armv8/amlogic/odroid-c2
echo "Micro SD and eMMC Creation on Odroid-C2"
echo "Run this script as root only."
echo "You can hit Ctrl+c in next 5 seconds if you don't want to continue."
sleep 5

umount /dev/sdd1

dd if=/dev/zero of=/dev/sdd bs=1M count=8

fdisk /dev/sdd << __EOF__ >> /dev/null
o
p
n
p
1


w
__EOF__

mkfs.ext4 /dev/sdd1

mkdir root
mount /dev/sdd1 root

wget http://archlinuxarm.org/os/ArchLinuxARM-odroid-c2-latest.tar.gz
bsdtar -xpf ArchLinuxARM-odroid-c2-latest.tar.gz -C root

cd root/boot
./sd_fusing.sh /dev/sdd
cd ../..

umount root
echo "Creation completed"
