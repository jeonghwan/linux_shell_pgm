#!/bin/bash

echo ""
echo "**********  Check unused accounts  ***********"
echo ""

DEF_ID="def_id.cfg"

for USER in $(cut -d: -f1 $DEF_ID)

do
  
  CNT=`grep -w ^$USER /etc/passwd | wc -l`
  
  if [ "$CNT" != 0 ]  
    then
      echo ""
      echo "  Default account [ $USER ] exists. Please stop or delete. "

  fi 
done

echo ""
echo "******************************************************"