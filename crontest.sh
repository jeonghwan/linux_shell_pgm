#!/bin/bash

TTY=`who | grep ubuntu | tail -1 | awk '{print $2}'`
cat << "EOF" > /dev/$TTY
========================

  sample message...

========================
EOF

exit