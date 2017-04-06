#!/bin/bash

PERM_CONF_LIST="perm.cfg"  # filename:permission(octal)

if [ ! -f $PERM_CONF_LIST ]; then
    echo "No config file to check prmissions. This job will be stop..."  
  exit 
fi

IMSI_FILE=/tmp/perm_imsi.tmp
touch $IMSI_FILE

for FILE in $(cut -d: -f1 $PERM_CONF_LIST); do
	PERM_CONF=`grep $FILE $PERM_CONF_LIST | cut -d: -f2`
	chmod $PERM_CONF $IMSI_FILE
	PERM_CONF_RWX=`ls -l $IMSI_FILE | awk '{print $1}'`
	PERM_CONF_CUR=`ls -l $FILE | awk '{print $1}'`
	#echo ""
	#echo "$FILE: $PERM_CONF => $PERM_CONF_RWX"
	#echo "       Current Permission: $PERM_CONF_CUR"
	#echo ""
	if [ "$PERM_CONF_RWX" != "$PERM_CONF_CUR" ]; then
		echo ""
        echo "  $FILE permission check result : $PERM_CONF_CUR must be check " 
        echo "                                   (recommend setting: $PERM_CONF ) "
	else
		echo ""              
        echo "  $FILE permission check result : $PERM_CONF_CUR ok "
	fi
done
