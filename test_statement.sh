#!/bin/bash

VAR=""

if test -z $VAR; then
	echo "VAR length is zero."
fi

if [ -z $VAR ]; then
	echo "VAR length is zero."
fi

if [ ! -z $VAR ]; then
	echo "VAR length is not zero."
fi

if grep ubuntu /etc/passwd > /dev/null; then
	echo "ubuntu found!!!"
fi

if ! grep ubunta /etc/passwd > /dev/null; then
	echo "ubunta not found!!!"
fi

if [ ! -z $1 ]; then
	echo "1st argument’s length is not zero."
else
	echo "1st argument’s length is zero."
fi