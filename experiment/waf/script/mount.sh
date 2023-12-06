#./build.sh
mkfs.f2fs -o 0 -s 16 /dev/nvme0n2
mount /dev/nvme0n2 /mnt
