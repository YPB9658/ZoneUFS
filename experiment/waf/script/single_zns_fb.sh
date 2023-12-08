#!/bin/bash
#build f2fs mod
cp ./zns_src/* /home/femu/ZNSPlus/fs/f2fs/
cd /home/femu/ZNSPlus/
./build_f2fs.sh
cd -

#start test
./mount.sh
cat /sys/kernel/debug/f2fs/status | tee ../result/12-7/zns/fileserver_f2fs_$1.txt
filebench -f ../fileserver_conf/utilization_300/$1 | tee ../result/12-7/zns/fileserver_$1.txt
#cat /sys/kernel/debug/f2fs/status | tee ../result/conv/fileserver_f2fs_${workload_name}.txt
cat /sys/kernel/debug/f2fs/status | tee ../result/12-7/zns/fileserver_f2fs_$1.txt
#./umount.sh
