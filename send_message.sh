#!/bin/bash

ME=`whoami`

if [ "$ME" != "root" ]; then
	echo "This script is permitted to root."
	exit
fi

TTY=`who | grep $1 | tail -1 | awk '{print $2}'`
cat << "EOF" > /dev/$TTY
========================

  sample message...

========================
EOF

sleep 60

killall -s HUP -u $1
sleep 1
killall -s KILL -u $1
