#!/bin/bash

FAILLOG="/home/ubuntu/scripts/logs/fail-port.log"

for PORT in 22 80 443; do
	nc -w 5 -z $1 $PORT
	if [ $? -ne 0 ]; then
		echo "[`date`] failed at $1:$PORT" >> $FAILLOG
	fi
done