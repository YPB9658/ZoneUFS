#!/bin/bash
fio /home/femu/workspace/test_fio/workload/conv/rw_100_8M_file.fio | tee /home/femu/workspace/test_fio/result/conv/fio_rw_100_8M.txt
cat /sys/kernel/debug/f2fs/status | tee /home/femu/workspace/test_fio/result/conv/f2fs_rw_100_8M.txt
