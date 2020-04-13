#!/bin/bash  

min=10
max=20

echo -n please input a num:
read num


#注意lt = less than 不要写成 ls :<
if [ $num -gt $min -a $num -lt $max ]; then
	echo $max '>' $num '>' $min 
fi



if [ $num -gt 100 -o $num -le -100 ]; then
	echo 111
fi

if [ ! $num -gt 100 ]; then 
	echo 222
fi
