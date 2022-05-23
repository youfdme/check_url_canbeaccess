#!/bin/bash
for url in `cat $1`
do
 web=`echo $url | awk 'NR==1'`
 sleep 0.1
 curl --connect-timeout 1 $web > /dev/null 2>&1
 if [ $? -eq 0 ];then
	echo -e "\033[32m$web is OK\033[0m"
 else
	echo -e "\033[31m$web is FAILE ....\033[0m"
 fi

done
