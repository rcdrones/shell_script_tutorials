#!/bin/bash



(ls;mkdir aaa;)


echo hhhhhhhhhh

for ((i=0;i<10;i++))
do
	echo $i
done



echo -----

i=0

while ((i<5))
do
	echo $i
	((i++))
done


echo '******'

i=10

until [[ $i > 20 ]]
do
	((aa=$i*2))
	echo $aa
	((i++))
done

echo hhhhhhhhhh

aa=10

while [ $aa -ge 10 -a $aa -le 20 ]
do
	echo $aa
	((aa++))
done

echo  aaaaaaaaaaa

aa=10

while [ $aa -ge 10 ] && [ $aa -lt 20 ]
do
	echo $aa
	((aa++))
done


echo  __________

aa=11

while [[ $aa > 10 && $aa < 20 ]]
do
	echo $aa
	((aa++))
done







