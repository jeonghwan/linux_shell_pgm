#!/bin/bash

PERM_CONF_LIST="perm.cfg"

if [ ! -f $PERM_CONF_LIST ] ;
  then
    echo "No config file to check prmissions. This job will be stop..."  
  exit 
fi

echo ""
echo "**************   Checking system files' permissions   ******************"
echo ""

touch /tmp/perm_imsi.tmp

for FILE in $(cut -d: -f1 $PERM_CONF_LIST)

do 
  PERM_CONF=`grep $FILE $PERM_CONF_LIST | cut -d: -f2`
  chmod $PERM_CONF /tmp/perm_imsi.tmp
  PERM_CONF_RWX=`ls -al /tmp/perm_imsi.tmp | awk '{print $1}'` 
  PERM_CONF_CUR=`ls -al $FILE | awk '{print $1}'`


  if [ "$PERM_CONF_RWX" != "$PERM_CONF_CUR" ] 
    then
        echo ""
        echo "    $FILE permission check result : $PERM_CONF_CUR must be check (recommend setting: $PERM_CONF )  "
     elif [ "$PERM_CONF_RWX" = "$PERM_CONF_CUR" ]
        then
             echo ""              
             echo "  $FILE permission check result : $PERM_CONF_CUR ok "
  fi


done

echo ""
echo "***********************************************************"

rm -f /tmp/perm_imsi.tmp
exit 