#!/bin/bash

who

who > 11.txt
echo

cat 11.txt
echo


who >> 11.txt
echo

cat 11.txt
echo

# 11.txt作为参数
wc -l 11.txt

# < 11.txt 作为输入（类似于键盘输入）
wc -l < 11.txt


wc -l << abcd
   This is a simple lookup program 
	for good (and bad) restaurants
	in Cape Town.
	ewrt
	的方法
	发达省份
abcd


echo "sadsad" > 2.txt

ls > /dev/null

ls > /dev/null 2>&1

###管道
#统计登陆的终端有几个
who

##用过文件来做中间介质
who > hh
wc -l <hh


##通过管道
who | wc -l



#		>    吐出去到文件
#		>>
#		<	 从文件输入
#		<<endtag	从下面的xxx变成输入流
#			xxxxx
#		endtag
#
#		0输入  1正常输出 2错误输出
#		>/dev/null 2>&1   表示任何输出都屏蔽掉
#
#		cmd1 | cmd2 管道操作
#
#
#
 
