#!/bin/bash

cat /dev/null > /home/ubuntu/scripts/logs/ck_setgid.log 

for FILE in $(find / -type f -perm -2000 -print 2> /dev/null); do
    OWNER="$(ls -l $FILE | awk '{print $4}')"
    
    if [ ! -z $FILE ]; then
        echo "File having $OWNER's setgid permission : $FILE "
        echo "File having $OWNER's setgid permission : $FILE " >> /home/ubuntu/scripts/logs/ck_setgid.log     
    fi 
    
done
exit 
