#!/bin/bash

name[0]=abc
name[2]=22
name[1]=11

my_name=(77 88 99 1010)

echo ${name[2]} #正确
echo "$name[1]" #错误，他把$name当作一个变量了

echo ${my_name[3]} #正确
echo ${my_name[4]} #overflow不会报错，只是找不到变量

echo ----打印全部数组-----
echo ${my_name[*]}
echo ${name[@]}

	echo ----循环打印每个单元----
	for i in "${my_name[@]}"
	do
		echo $i
	done

