#!/bin/bash

SWAPCOUNT_LIMIT=10

SWAPCOUNT=$(vmstat 1 6 | awk 'NR >= 4 {sum += $7 + $8} END {print sum}')

DATE=$(date '+%Y/%m/%d %H:%M:%S')
if [ $SWAPCOUNT -ge $SWAPCOUNT_LIMIT ]; then
	echo "[$DATE] Swap Alert: $SWAPCOUNT (si+so)"
else
	echo "[$DATE] Swap: $SWAPCOUNT (si+so)"
fi