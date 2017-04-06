#!/bin/bash

PASS_LEN=9
PASS_DAYS=30

CNT_LEN=`cat /etc/pam.d/common-password | grep "minlen" | grep -v "#" | awk '{print $7}' | cut -d= -f2`

CNT_DAYS=`cat /etc/login.defs | grep "PASS_MAX_DAYS" | grep -v "#" | awk '{print $2}'`

if [ "$PASS_LEN" != "$CNT_LEN" ]; then
    echo ""
    echo "  Current setting for password's min length:  $CNT_LEN : need to check(recommend: $PASS_LEN)  "
else
    echo ""              
    echo "  Current setting for password's min length:  $CNT_LEN : ok "
fi

if [ "$PASS_DAYS" != "$CNT_DAYS" ]; then
    echo ""
    echo "  Current setting for password's max age:  $CNT_DAYS days : need to check(recommend: $PASS_DAYS)  "
else
    echo ""              
    echo "  Current setting for password's max age:  $CNT_DAYS days : ok "
fi