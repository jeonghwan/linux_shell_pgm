#!/bin/bash

IDLE_LIMIT=10.0

CPU_IDLE=$(mpstat 1 5 | tail -n 1 | awk '{print $NF}')

IS_ALERT=$(echo "$CPU_IDLE < $IDLE_LIMIT" | bc)

DATE=$(date '+%Y/%m/%d %H:%M:%S')
if [ $IS_ALERT -eq 1 ]; then
	echo "[$DATE] CPU %idle Alert: $CPU_IDLE (%)"
else
	echo "[$DATE] CPU %idle: $CPU_IDLE (%)"
fi