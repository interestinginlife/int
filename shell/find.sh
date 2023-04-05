#!/bin/bash
#find $1 -mtime +30 -type f ! -name "*.bak" -exec rm -rf {} \;
if [ $# != 0 ];then
	find $1 -type f ! -name "*.bak" -exec mv {} /root/recycle \;
	ti="$(date '+%F %T')"
	find /root/recycle -type f -name "*" -exec touch -m -d "$ti"  {}  \;
fi
#while true;do
#	find /root/recycle/ -mtime +30 -type f ! -name "*.bak" -exec rm -rf {} \;
#done
