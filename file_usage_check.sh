#!/bin/bash

FILEMB=10
FILESIZE=`expr $FILEMB \* \( 1024 \* 1024 \)`

for USERNAME in $(cut -d: -f1,3 /etc/passwd | awk -F: '$2 > 999 {print $1}'); do
	echo "[ List of $USERNAME's $FILEMB mb oversized files ]"
	find /usr /home -user $USERNAME -type f -ls | awk "\$7 > $FILESIZE" | awk '{print "=> " $11, $7}'
done