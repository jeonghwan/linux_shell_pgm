#!/bin/bash

for FILE in $(find / -type f -perm -4000 -print 2> /dev/null); do
    ls -l $FILE | awk '{print $1, $2, $5, $9}'
done

