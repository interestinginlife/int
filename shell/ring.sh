
#select i in 延迟 ; do
#	case $i in
#		延迟)
#			read -p "请输入你要延迟的时间" delay
#			read -p "请输入你要延迟的时间单位:秒(s)、分钟(m)、小时(h)、天数(d)" unit
#			sleep $delay$unit
#			if [ $? == 0 ];then
#				bell
#			else
#				echo "格式输入错误，重试一次"
#			fi
#			;;
#		
#	esac
#done
time=0
ki=0
until [ $# -eq 0 ];do
	case $1 in
		-t)
			time=1
			shift 1
			;;
		-k)
			ki=1
			shift 1
			;;
		 *)
			ti=$1
			shift 1
			;;
	esac

done

if [ $time -eq 1 -a $ki -ne 1 ];then
		while true;do
			da=$(date '+%H:%M')
			if [ $ti == $da ];then
				sleep 0.5
				echo -ne "\a"
			fi
		done
fi
	
#gr=$(bash ./ring.sh -t "$ti" & )

if [ $time -ne 1 -a $ki -eq 1 ];then
	ep=$(ps -aux | grep ring.sh | awk -F "[ ]+" '{print $2}')
	kill -9 $ep

fi
	
