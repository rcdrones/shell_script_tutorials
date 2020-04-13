#!/bin/bash

#echo 11



fun2(){
	
	fun1
	echo "end"
}



fun1(){
	
	echo "into....fun1"
}


fun2


trap "echo 111 " 2


while [ 1 ];do
	echo -n haha
	read i
	echo $i
done



