#./build.sh
mkfs.f2fs -o 5 -s 16 /dev/nvme0n2p1
mount /dev/nvme0n2p1 /mnt
