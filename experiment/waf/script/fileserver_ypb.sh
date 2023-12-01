#!/bin/bash
workloads=$(ls /home/femu/fileserver_conf/utilization)
for workload_name in ${workloads[@]}
do
	./mount.sh
	filebench -f /home/femu/fileserver_conf/utilization/${workload_name} > /home/femu/result/fileserver_${workload_name}.txt
	cat /sys/kernel/debug/f2fs/status >> /home/femu/result/fileserver_f2fs_${workload_name}.txt
	./umount.sh
done
