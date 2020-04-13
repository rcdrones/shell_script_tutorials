#!/bin/bash



a=1

b=1

while [ $a -le 10 ]
do
	b=1
	while [ $b -le $a ]
	do
		echo -n "$b " 
		
		b=`expr $b + 1`

		
	done
	
	echo
	
	a=`expr $a + 1`
	
done

echo ------end--------
