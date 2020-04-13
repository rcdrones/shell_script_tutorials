#!/bin/bash



haha (){  
	echo okokokok
}


haha 



haha (){  

	a=$1
	b=$2

	c=`expr $a + $b`
	echo $c
}


haha 11 66


fun1(){

	echo 1111
	haha 4 6
}

fun2(){
	echo 222
}

fun2(){
	echo 555
}

fun1


echo -----

do_jobs(){
	
	a=$1
	b=$2
	c=$3
	
	d=`expr $a + $b `
	
	d=`expr $d \* $c`
	
	echo $d
	
	return $d
	
}

do_jobs  1  2  3

dd=$?
echo 结果是$dd


# . fun.sh
# do_jobs 1 2 4


