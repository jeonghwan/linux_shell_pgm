#!/bin/bash

FILECNT=`find $1 -maxdepth 1 -type f -print | wc -l`
DIRCNT=`find $1 -maxdepth 1 -type d -print | wc -l`

DIRCNT=`expr $DIRCNT - 1`

echo "Target Directory: $1"
echo "File #: $FILECNT"
echo "Dir #: $DIRCNT"

