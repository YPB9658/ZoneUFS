#./build.sh
mkfs.f2fs -o 40 -s 16 /dev/nvme0n1p1
mount /dev/nvme0n1p1 /mnt
