#!/bin/sh

LSALL=`ls *`

for MYFILE in `echo $LSALL`
do
	if [ -f $MYFILE ]; then
		if [ -s $MYFILE ]; then
			echo "$MYFILE"
		fi
	fi
done

echo "==== END ===="