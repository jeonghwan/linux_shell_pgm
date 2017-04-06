#!/bin/bash

echo -n "continue? (y/n) "
read ANSWER

while [[ "$ANSWER" != [Yy] ]]; do
	echo -n "keep going? (y/n) "
	read ANSWER
done
echo "Good job!"
