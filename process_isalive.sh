#!/bin/bash

CMD="/usr/libexec/mysqld"

COUNT=$(ps ax -o command | grep "$CMD" | grep -v "^grep" | wc -l)

if [ $COUNT -eq 0 ]; then
	echo "[ERROR] process $CMD not found"
fi