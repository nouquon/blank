#
d=/workspaces/blank/alpinefs
sudo mount --bind /proc $d/proc
sudo mount --bind /sys $d/sys
sudo mount --bind /dev $d/dev
sudo mount --bind /dev/pts $d/dev/pts
sudo mount --bind /dev/shm $d/dev/shm

cp resolv.conf $d/etc/resolv.conf
chroot $d /bin/su -l
#