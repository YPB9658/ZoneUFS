#!/bin/bash
for((i=2;i<=100;i++))
do
echo "
[global]
name=file-randwrite
directory=/mnt/conv/
rw=randwrite
bs=16k
direct=1
runtime=60
numjobs=1

[file${i}]
size=8M
ioengine=libaio
iodepth=8
" | tee fio${i}.fio
done
