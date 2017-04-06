#!/bin/bash

cat /dev/null > /home/ubuntu/scripts/logs/ck_setuid.log 

for FILE in $(find / -type f -perm -4000 -print 2> /dev/null); do
    OWNER="$(ls -l $FILE | awk '{print $3}')"
    
    if [ ! -z $FILE ]; then
        echo "File having $OWNER's setuid permission : $FILE "
        echo "File having $OWNER's setuid permission : $FILE " >> /home/ubuntu/scripts/logs/ck_setuid.log     
    fi 
    
done
exit 
