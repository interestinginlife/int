#!/bin/bash
while true;do
	while true;do
		for i in $(df -hT | awk -F "[ %]+" 'NR>1{print NR}');do
			disk=$(df -hT | awk -F "[ %]+" 'NR=='$i'{print $6}')
			na=$(df -hT | awk -F "[ %]+" 'NR=='$i'{print $1}')
			if [ "$disk" -eq 8 ];then
				sleep 1
				echo "$na磁盘空间占用超过85%，请即使查看" | mail -s "Warning" root@shell
			fi
		done
		sleep 3
		break
	done	
	while true;do
		men=$(free -m | awk -F "[ ]+" 'NR==2{printf "%d",$3/$2*100}')
		if [ "$men" -eq 4 ];then
		       echo "内存占用超过85%，请及时查看" | mail -s "Warning" root@shell
		fi
		sleep 3
		break
	done
done
