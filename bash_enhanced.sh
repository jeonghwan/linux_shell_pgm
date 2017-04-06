#!/bin/bash

if grep $1 /etc/passwd > /dev/null 2>&1; then
	echo "Found $1"
else
	echo "Not found $1"
fi