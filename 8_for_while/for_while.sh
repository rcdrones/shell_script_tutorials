#!/bin/bash


a=0



while [ $a -lt 10 ]
do
	echo -n "$a"
	a=`expr $a + 1`

done

echo 

for val in 0 1 3 5 4 7
do
	echo  "$val"
done


for f in $HOME/.bash*
do
	echo $f
done


echo ----------until-------
b=0

until [ $b -ge 10 ]
do
	echo $b
	b=`expr $b + 1`
done


c=0
while [ $c -le 100 ]
do
	echo -n "$c "
	c=`expr $c + 1`
	
	if [ $c == 22 ]; then
		break
	fi
	
done

echo -----------
c=0
while [ $c -le 100 ]
do
	c=`expr $c + 1`
	
	if [ $c == 22 ]; then
		continue
	fi
	
	echo -n "$c "
	
done

echo finish



