#!/bin/bash
cat /sys/kernel/debug/f2fs/status > ../result_op/fileserver_f2fs_$1.txt
filebench -f fileserver_conf/fileserver.f > ../result_op/fileserver_$1.txt
cat /sys/kernel/debug/f2fs/status >> ../result_op/fileserver_f2fs_$1.txt
