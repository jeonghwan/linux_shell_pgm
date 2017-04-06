#!/bin/bash

echo ""
echo "**********  Check password's min length & max age  ***********"
echo ""

pss_len=9
pss_days=30

cnt_len=`cat /etc/pam.d/common-password | grep "minlen" | grep -v "#" | awk '{print $7}' | cut -d= -f2`

cnt_days=`cat /etc/login.defs | grep "PASS_MAX_DAYS" | grep -v "#" | awk '{print $2}'`
 
  if [ "$pss_len" != "$cnt_len" ] 
    then
      echo ""
      echo "  Current setting for password's min length:  $cnt_len : need to check(recommend: $pss_len)  "
    elif [ "$pss_len" = "$cnt_len" ]
      then
        echo ""              
        echo "  Current setting for password's min length:  $cnt_len : ok "
  fi

  if [ "$pss_days" != "$cnt_days" ] 
    then
       echo ""
       echo "  Current setting for password's max age:  $cnt_days days : need to check(recommend: $pss_days)  "
     elif [ "$pss_days" = "$cnt_days" ]
       then
         echo ""              
         echo "  Current setting for password's max age:  $cnt_days days : ok "
  fi

echo ""
echo "*************************************************************"

