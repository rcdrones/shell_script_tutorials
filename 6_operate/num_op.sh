#!/bin/bash  
#shebang必须写在第一行

a=100
b=200

echo `expr $a + $b`

if [ $a == $b ]; then
	echo 相等
else
	echo 不相等
fi
if [ $a != $b ]; then
	echo 不相等2
fi


if [ ! $a -gt $b ]; then
	echo  '! $a -gt $b'
else
	echo 111
fi

if [ $a -lt $b ]; then
	echo '$a -lt $b'
fi



if [ ! $a -ge $b ];then
	echo '! $a -ge $b'
fi

if [ $a -le $b ]; then
	echo '$a -le $b'
fi




a="100"
b="500"

c=$b

echo "c=$c"


value=`expr $a + $b`
echo $value

value=`expr $a - $b`
echo $value

value=`expr $a \* $b`
echo $value

value=`expr $b / $a`
echo $value


if [ $a == $b ]
then
	echo a和b相等
fi

if [ $a != $b ]
then
	echo a不等于b
fi



if [ $a -eq $b ] #-eq means eque
then
	echo a和b相等
fi

if [ $a -ne $b ]
then
	echo a不等于b # -ne means not eque
fi

# > >= < <= 不支持的！需要用命令
if [ $a -gt $b ] #greater than
then
	echo a大于b
elif [ $a -ge $b ] # greater equal
then
	echo a大于等于b
elif [ $a -lt $b ] # less than
then
	echo a小于b
elif [ $a -le $b ] #less equal
then	
	echo a小于等于b
fi



#############################
echo 布尔运算 and or not

if [ ! $a -gt $b ]
then
	echo 666
fi

if [ "2" -gt "1" -a "3" -le "3" ]
then
	echo 77
fi

if [ "-1" -gt "0" -o "1" -lt "2" ]
then
	echo 888
fi

#############################
#string op

a="abc"
b="efg1"

if [ $a != $b ]; then
echo 444
fi

b="abc"
if [ $a = $b ]
then
	echo 77
fi

a=""
if [ $a ]; then
echo fff
else
echo 99
fi

a=""
if [ -z $a ]; then
echo fff
else
echo 99
fi

a="aaa"
if [ -n $a ]; then
echo fff
else
echo 99
fi








