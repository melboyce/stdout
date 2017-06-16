# Void Linux build guide

1. boot from live/install media
2. check network config
   1. dhcpcd
   2. manual
      1. ip link set dev <DEV> up
      2. ip addr add <IP>/<MASK> brd + dev <DEV>
      3. ip route add default via <GWIP>
      4. configure resolver
3. partition disk(s)
4. make filesystems
5. mount target partitions to /mnt
6. `xbps-install -S -R http://repo.voidlinux.eu/current -r /mnt base-system grub`
7. setup chroot
   1. `mount -t proc proc /mnt/proc`
   2. `mount -t sysfs sys /mnt/sys`
   3. `mount -o bind /dev/ /mnt/dev`
   4. `mount -t devpts /mnt/dev/pts`
   5. `cd /mnt`
   6. `chroot /mnt`
8. base config:
   1. `/etc/hostname`
   2. `/etc/rc.conf`
   3. `/etc/fstab`
   4. `/etc/default/libc-locales`
      - `xbps-reconfigure -f glibc-locales`
   5. `/etc/dracut.conf`
   6. `dracut --force --hostonly '' KERNEL_VERSION_RELNUM`  # see /lib/modules
9. bootloader (don't forget /boot/foo/bar.cfg)
   1. `grub-install --target=i386-pc /dev/sdX`
   2. `grub-install --target=x86_64-efi --efi-directory=/boot/efi --boot-directory=/boot --recheck --debug`
   3. `xbps-reconfigure -f linux4.0`  # change version to suit
10. set passwords
11. unmount and reboot
12. post-install:
    1. network check
    2. datetime
    3. services
    4. periodic tasks
    5. sysctl settings
    6. logging
    7. local accounts
