#!/bin/bash

for FILENAME in $(ls -AF $1); do
	case $FILENAME in
		.*/)
			echo "dot directory: $FILENAME"
			;;
		.*)
			echo "dot file: $FILENAME"
			;;
	esac
done