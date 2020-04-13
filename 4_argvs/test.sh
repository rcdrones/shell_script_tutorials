#!/bin/bash

echo "传入的第一个参数是：$1"
echo "传入的第二个参数是：$2"
echo "传入的第三个参数是：$3"

echo "本脚本的文件名叫什么？：$0"

echo 传入了几个参数？$#

echo 传入的参数分别是什么（合并成1个字符串输出）？$*  

echo 另外一种表达（单个arg连续输出）：$@  

echo 程序退出的状态，0表示正常，非0表示错误码：$?

echo 程序的PID=$$，可以用'ps -aux | grep xxx' 进行查看！ 

echo '-------$* 和 $@ 的区别，利用循环语句-------'

echo ----不加双引号------

for my_arg in $*
do
	echo $my_arg
done

for my_arg in $@
do
	echo $my_arg
done

echo ------加双引号---------

for my_arg in "$*"
do
	echo $my_arg
done

for my_arg in "$@"
do
	echo $my_arg
done


read


