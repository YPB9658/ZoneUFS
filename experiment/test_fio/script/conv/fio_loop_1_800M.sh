#!/bin/bash
for ((i=1;i<=3;i++))
do
	fio /home/femu/workspace/test_fio/workload/conv/rw_1_800M_file.fio | tee /home/femu/workspace/test_fio/result/conv/fio_loop_rw_1_800M.txt
	cat /sys/kernel/debug/f2fs/status | tee /home/femu/workspace/test_fio/result/conv/f2fs_loop_rw_1_800M.txt
#	rm /mnt/conv/file*
done
