#!/bin/bash



option="${1}"

case "$option" in
	"-a")
		name="${2}"
		echo "用ak打死了$name"
		;;
	"-9")
		name="${2}"
		echo "用98k狙了$name"
		;;
	*)
		echo "${0}:usage: [-a name] | [-9 name]" 
		exit 007
		;; 
esac


# exit 后面跟的是err code。 0表示正常，其他数字表示 error code。可以用 echo $?来获取异常退出代码

