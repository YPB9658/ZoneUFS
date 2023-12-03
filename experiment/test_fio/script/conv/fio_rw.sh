#!/bin/bash
savePath=/home/femu/workspace/test_fio/result/conv/randwrite
workloadPath=/home/femu/workspace/test_fio/workload/conv/randwrite
workloadList=$( ls ${workloadPath} )
for workload in ${workloadList[@]}
do
	./mount.sh
	fio ${workloadPath}/${workload} | tee ${savePath}/fio_${workload%.*}.txt
	cat /sys/kernel/debug/f2fs/status | tee ${savePath}/f2fs_${workload%.*}.txt
	./umount.sh
done
