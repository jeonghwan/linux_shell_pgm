#!/bin/sh

echo -n "VAL1: "
read VAL1
echo -n "VAL2: "
read VAL2

echo "VAL1: $VAL1"
echo "VAL2: $VAL2"

if test $VAL1 -eq $VAL2; then
	echo "VAL1 is equal to VAL2."
else 
	if [ $VAL1 -gt $VAL2 ]; then
		echo "VAL1 is greater than VAL2."
	else
		if [ $VAL1 -lt $VAL2 ]; then
			echo "VAL1 is less than VAL2."
		fi
	fi
fi
