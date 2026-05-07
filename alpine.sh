#!/bin/sh
dir=/workspaces/blank/alpinefs
if [ ! -d "$dir/proc/fs" ]; then
  for fs in proc sys dev tmp ; do
    sudo mount --rbind /$fs $dir/$fs
  done
fi
#echo "nameserver 1.1.1.1" > $dir/etc/resolv.conf
sudo chroot $dir /bin/ash