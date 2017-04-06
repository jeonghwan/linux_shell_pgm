#!/bin/sh

MYFILE=$1

if [ -f $MYFILE ]; then
	if [ -s $MYFILE ]; then
		echo "$MYFILE is not zero file."
	else
		echo "$MYFILE is zero file."
	fi
fi