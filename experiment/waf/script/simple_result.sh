#!/bin/bash
files=$(ls ./result/fileserver_f2fs*)
ALL_RES=./result/all_result.txt
echo "" > ${ALL_RES}
for file in ${files[@]}
do
	echo ${file}":" >> ${ALL_RES}
	cat ${file} | grep "write count" >> ${ALL_RES}
	cat ${file} | grep "Try to move" >> ${ALL_RES}
	echo "" >>${ALL_RES}
done
