#!/bin/bash

PW="/etc/passwd"

for NAME in $(cut -d: -f1 $PW)

do 

    UID_CHK=`grep -w ^$NAME $PW | grep -v ^root | cut -d: -f3`

    if [ "$UID_CHK" = 0 ] 
       	then        
        echo ""
        echo "  $NAME => UID 0. You need to check this issue."
    fi

done

exit
