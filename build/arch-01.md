# Arch Linux manual build guide

1. Boot from live/install media
2. partition disk(s)
3. make filesystems
4. mount target partitions to /mnt
5. check network config
   1. dhcpcd
   2. manual
      1. ip link set dev <DEV> up
      2. ip addr add <IP>/<MASK> brd + dev <DEV>
      3. ip route add default via <GWIP>
      4. configure resolver
6. `pacstrap /mnt <PKGLIST>`
7. `genfstab -p /mnt >> /mnt/etc/fstab`
8. arch-chroot /mnt
9. base config:
   1. pacman (conf and mirrorlist)
   2. `/etc/locale.{gen,conf}`
   3. `/etc/hostname`
   4. `/mnt/etc/salt/{minion_id,grains}`
   5. `/mnt/etc/hosts`
   6. logging, network, users, security, etc
10. locale-gen
11. bootloader
    1. `grub-install --target=i386-pc /dev/sdX`
    2. `syslinux-install_update -iam`  (after editing `/boot/syslinux/syslinux.cfg`)
12. set passwords
13. unmount and reboot
14. post-install:
    1. timezone: `timedatectl set-timezone`
    2. services
    3. network check
    4. misc checks
