#!/bin/bash

a=123
b=123

if [ $a == $b ]; then
	echo haha2020
fi

c=456
b=456

if [ $a == $c ];then
	echo aa==c
elif [ $c == $b ]; then
	echo c==b
else
	echo 88
fi

aa="rcdrones"
bb=="Rcdrones"

if [ $aa = $bb ];then
	echo aa = bb
else
	echo 9999
fi


fav="ap1ple"

case "$fav" in
	"aaa")
		echo aaaaaaaaa
		;;
	"bbb")
		echo bbbbb
		;;
	"apple")
		echo i love apple
		;;
	*)
		echo 9999999999999999
		;;
	
esac
