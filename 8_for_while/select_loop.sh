#!/bin/bash

echo 00

PS3="input skill.......<ctrl+d exit>:"
export PS3

select skill in python shell c vc vb java javascript none
do
	case $skill in
		python|shell|c)
			echo "11111"
			;;
		
		vc|vb|java)
			echo 2222
			;;
		*)
			echo 333
			exit 0
			;;
	esac
			

done 
