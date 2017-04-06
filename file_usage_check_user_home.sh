#!/bin/bash

FILESIZE=`expr $1 \* 1024`
echo $FILESIZE
find /home/$USER -user $USER -type f -ls | awk "\$7 > $FILESIZE" | awk '{print "=> " $11, $7}'
