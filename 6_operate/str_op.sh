#!/bin/bash  

p1="rcdrones"

p2=$p1+'rcdrones'

echo $p1 $p2


p1="wa"
p2="www"

if [ ! $p1 = $p2 ]; then
	echo not same
fi

p1=www  # 用‘www’ “www” 都可以


if [ $p1 = $p2 ];then
	echo same
fi

p1="wa"
p2="www"

if [ $p1 != $p2 ];then
	echo '@@@@@@@@@@   !=   @@@@'
fi

p3=""

if [ ! $p3 ]; then
	echo 'p3 = null'
fi

p3=22
if [ -z $p3 ]; then   #当p3 为空时候，返回true      非空的时候 返回 false
	echo 0000
fi

p3=11

if [ $p3 ]; then
	echo $p3
else
	echo 'p3==null'
fi

#p4="777666"
#p4=null
#注意 -n 一定要加上“”进行运算
p4="232"
if [ -n "$p4" ];then            #当 p4 空的时候，返回false     p4为非空的时候，返回true
	echo ps4 is not null
fi






