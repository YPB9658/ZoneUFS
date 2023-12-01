#!/bin/bash
fio ../workload/seqwrite.fio | tee ../result/bw_seqwrite.txt
fio ../workload/seqread.fio  | tee ../result/bw_seqread.txt
fio ../workload/randwrite.fio | tee ../result/bw_randwrite.txt
fio ../workload/randread.fio  | tee ../result/bw_randread.txt
