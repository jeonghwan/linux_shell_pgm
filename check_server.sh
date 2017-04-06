#!/bin/bash

SVRIPS="serverlist.txt"

for IP in $(cat $SVRIPS | awk -F: '{print $2}'); do
	if ! ping -c 2 $IP >> /dev/null; then
		SERVER=`grep $IP $SVRIPS | awk -F: '{print $1}'`
		echo "$SERVER($IP) not respond..." >> server_check_error_`date +%Y%m%d-%H%M`.log
	fi
done