#!/bin/bash

USED_LIMIT=90
TMPFILE="/tmp/df.tmp.$$"

df -P | awk 'NR >= 2 {print $5, $6}' > $TMPFILE

while read PERCENT MOUNTPOINT; do
	PERCENT_VAL=${PERCENT%\%}
	DATE=$(date '+%Y/%m/%d %H:%M:%S')
	if [ $PERCENT_VAL -ge $USED_LIMIT ]; then
		echo "[$DATE] Disk Capacity Alert: $MOUNTPOINT ($PERCENT used)"
	else
		echo "[$DATE] Disk Capacity: $MOUNTPOINT ($PERCENT used)"
	fi
done < $TMPFILE

rm -f $TMPFILE
