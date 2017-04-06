#!/bin/bash

ME=`whoami`
CRONTAB_FILE="/var/spool/cron/crontabs/$ME"

echo -n "month: (1~12)"
read MONTH

echo -n "date: (1~31)"
read DATE

echo -n "hour: (0~23)"
read HOUR

echo -n "minute: (0~59)"
read MINUTE

echo -n "weekday: (1~7)"
read WEEKDAY

echo -n "program path: "
read PROGRAM

CRONCFG="$MINUTE $HOUR $DATE $MONTH $WEEKDAY $PROGRAM"

CURRENT_CFG_FLAG=`cat $CRONTAB_FILE | grep -v "^#" | grep "$PROGRAM" | wc -l`

if [ $CURRENT_CFG_FLAG == 0 ]; then
	echo "$CRONCFG" >> $CRONTAB_FILE
else
	echo "$PROGRAM is already registered..."
fi