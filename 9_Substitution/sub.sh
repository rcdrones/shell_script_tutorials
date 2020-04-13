#!/bin/bash

echo ggg\n bbb

echo nihao            nihao

echo "nihao           nihao"

# -e表示支持转意字符

echo -e "aaaaaaanihao    \n  bbbbbb "

echo 



mydate=`date`

echo "今天是 $mydate"

users=`who | wc -l`
echo "有 $users 个用户登陆了系统"
# 默认登陆了2个终端，tty1 - tty6 为文字终端
# tty7 为desktop 图形终端
# 用who 命令就能知道现在登陆了几个终端
# 切换对应的终端的快捷键是 ctrl + alt + f1(1-7)

echo 
aa=`cd ~;ls -l`

#echo $aa

runtime=`date ; uptime`
echo "Uptime is $runtime"
echo


# :- :+ := :?

var=
aa=${var:-"变量如果为空,变量本身不变化，赋值返回这句话"}
echo "11 - ${aa}"
echo "22 - $var"
echo

var=fffff
aa=${var:+"变量如果不为空,变量本身不变化，赋值返回这句话"}
echo "11 - ${aa}"
echo "22 - $var"
echo


var=
aa=${var:="变量如果不为空,变量本身变成这句话，赋值返回也是这句话"}
echo "11 - ${aa}"
echo "22 - $var"
echo 

var=
aa=${var:?"变量如果为空,shell报错。立刻停止"}
echo "11 - ${aa}"
echo "22 - $var"
echo 
