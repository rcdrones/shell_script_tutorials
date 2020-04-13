#!/bin/bash  


log="./abc.txt"
dir="./8848"



# -r -w -x 表示read write execute
if [ -r $log ]; then
	echo can read
fi

#-d 判断是否是目录
if [ -d        $dir      ];then
	echo this is dir
fi

#-f  判断文件是否存在
if [ -f $log ];then
	echo 文件是否存在
fi

if [ -e $log -a -e $dir ];then
	echo 都存在
fi

# && || 
if [[ -s $log ]] && [[ -s $dir ]];then
	echo 都存在2
fi






