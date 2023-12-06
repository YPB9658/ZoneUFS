#!/bin/bash
workloads=$(ls ../fileserver_conf/utilization_300)
#build f2fs mod
cp ./conv/* /home/femu/ZNSPlus/fs/f2fs/
cd /home/femu/ZNSPlus/
./build_f2fs.sh
cd -

for workload_name in ${workloads[@]}
do
	#start test
	./mount.sh
	cat /sys/kernel/debug/f2fs/status | tee ../result/conv/fileserver_f2fs_${workload_name}.txt
	filebench -f ../fileserver_conf/utilization_300/${workload_name} | tee ../result/conv/fileserver_${workload_name}.txt
	cat /sys/kernel/debug/f2fs/status | tee ../result/conv/fileserver_f2fs_${workload_name}.txt
	sleep 60
	cat /sys/kernel/debug/f2fs/status | tee ../result/conv/fileserver_f2fs_bg_${workload_name}.txt
	./umount.sh
done
