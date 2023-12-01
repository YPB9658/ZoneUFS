#!/bin/bash
#seq write
/home/femu/mount.sh
filebench -f workload/seqwrite.f | tee result/fb_bw_seqwrite.f
#seq read
filebench -f workload/seqread.f | tee result/fb_bw_seqread.f
/home/femu/umount.sh

#rand write
/home/femu/mount.sh
filebench -f workload/randwrite.f | tee result/fb_bw_randwrite.f
#rand read
filebench -f workload/randread.f | tee result/fb_bw_randread.f
/home/femu/umount.sh
