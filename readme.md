timedatectl set-ntp true
mkfs.ext4 /dev/sdxy
mount /dev/sdxy /mnt
pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime
howclock --systohc
/etc/locale.gen
/etc/locale.conf
LANG=en_US.UTF-8
locale-gen
echo arch > /etc/hostname
/etc/hosts
127.0.1.1 arch.localdomain arch
mkinitcpio -p linux
passwd
INSTALL [intel-ucode grub os-prober]
grub-install --target=i386-pc /dev/sdx
grub-mkconfig -o /boot/grub/grub.cfg
