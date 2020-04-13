#!/bin/bash

echo jjjj

# () 初始化定义数组

a=("haha" 1 2 3 "good")

echo ${a[4]}

if [ ${a[1]} -gt 0 ]; then
	echo 4444
fi


# () 表示新开一个shell，然后按照顺序执行

b=$(ls;who)

echo $b

c=$`ls;ls`
echo $c

# ()内部的命令输出，全部输出到aa.txt里
(ls;who)>aa.txt
cat aa


# (()) 里面的语句都是仿照C语言的语法的。

i=10
while ((i))
do
	if ((i>5));then
		echo $i
		((i--))
	else
		break
	fi
done


i=13
# []

if [ $i -gt 10 -a $i -lt 20 ];then
	echo qqq
fi

if [ $i -gt 10 ] && [ $i -lt 20 ] ; then
	echo www
fi	

#[[]]
if [[ $i >=13 && $i <=14 ]];then
	echo eee
fi



