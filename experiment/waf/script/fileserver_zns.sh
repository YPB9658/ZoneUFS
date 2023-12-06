#!/bin/bash
workloads=$(ls ../fileserver_conf/utilization_300)
#build f2fs mod
cp ./zns_src/* /home/femu/ZNSPlus/fs/f2fs/
cd /home/femu/ZNSPlus/
./build_f2fs.sh
cd -
for workload_name in ${workloads[@]}
do
	#start test
	./mount.sh
	cat /sys/kernel/debug/f2fs/status | tee ../result/zns/fileserver_f2fs_${workload_name}.txt
	filebench -f ../fileserver_conf/utilization_300/${workload_name} | tee ../result/zns/fileserver_${workload_name}.txt
	cat /sys/kernel/debug/f2fs/status | tee ../result/zns/fileserver_f2fs_${workload_name}.txt
	./umount.sh
done
