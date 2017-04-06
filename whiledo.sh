#!/bin/bash

INC=0

while [ $INC -lt 10 ]
do
	echo $INC
	echo "INC: $INC"
	echo "${INC}"
	INC=`expr $INC + 1`
done
echo "=== END ==="