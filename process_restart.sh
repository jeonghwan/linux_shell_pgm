#!/bin/bash

CMD="/usr/sbin/apache2"

START="/etc/init.d/apache2 start"

COUNT=$(ps ax -o command | grep "$CMD" | grep -v "^grep" | wc -l)

if [ $COUNT -eq 0 ]; then
	DATE=$(date '+%Y/%m/%d %H:%M:%S')
	echo "[$DATE] process $CMD not found"
	echo "[$DATE] process $CMD start..."
	$START
fi