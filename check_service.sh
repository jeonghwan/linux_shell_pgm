#!/bin/bash

PROCS="serviceprocess.txt"

for SVC in $(cat $PROCS | awk -F: '{print $1}'); do
	RUNNING_PROC_CNT=`ps -ef | grep $SVC | grep -v grep | grep -v "@" | wc -l`
	REGULAR_PROC_CNT=`grep $SVC $PROCS | awk -F: '{print $2}'`

	if [ $RUNNING_PROC_CNT != $REGULAR_PROC_CNT ]; then
		echo "SVC: $SVC"
		echo "RUNNING_PROC_CNT: $RUNNING_PROC_CNT"
		echo "REGULAR_PROC_CNT: $REGULAR_PROC_CNT"	
	fi
	
done