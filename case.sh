#!/bin/bash
echo -n "Please enter number: "
read NUM
case "$NUM" in
	1) echo "One" ;;
	2) echo "Two" ;;
	3) echo "Three" ;;
	*) echo "Other";;
esac