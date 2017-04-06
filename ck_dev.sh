#!/bin/bash

#email=root@`domainname`

IMSI=/tmp/dev_find_IMSI.tmp

touch $IMSI
cat /dev/null > $IMSI

find /dev -type f -exec ls -al {} \; > $IMSI

if [ -s $IMSI ];
    then
      	#mail -s " Result for checking regular files in /dev directory(`date +%Y%m%d-%H:%M`) " $email < $IMSI
      	cat $IMSI
    else
    	echo "No regular files in /dev directory"
fi

rm -f $IMSI
 