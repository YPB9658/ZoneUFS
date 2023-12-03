#!/bin/bash
for((i=2;i<=100;i++))
do
echo "
[file${i}]
size=8M
ioengine=libaio
iodepth=8
"
done
