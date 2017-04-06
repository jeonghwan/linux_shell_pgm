#!/bin/bash

ME=`whoami`

if [ "$ME" != "root" ]; then
	echo "This script is permitted to root."
	exit
fi

echo "This script is executed by root."