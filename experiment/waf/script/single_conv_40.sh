#!/bin/bash
#build f2fs mod
cp ./conv/* /home/femu/ZNSPlus/fs/f2fs/
cd /home/femu/ZNSPlus/
./build_f2fs.sh
cd -

#start test
./mount.sh
cat /sys/kernel/debug/f2fs/status | tee ../result/conv_40/fileserver_f2fs_$1.txt
filebench -f ../fileserver_conf/op40_300/$1 | tee ../result/conv_40/fileserver_$1.txt
#cat /sys/kernel/debug/f2fs/status | tee ../result/conv/fileserver_f2fs_${workload_name}.txt
sleep 60
cat /sys/kernel/debug/f2fs/status | tee ../result/conv_40/fileserver_f2fs_$1.txt
#./umount.sh
