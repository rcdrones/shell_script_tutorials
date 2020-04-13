#!/bin/bash

myname="rcdrones"

# myname = "66" <==等号两边不能有任何空格！！！非常重要

# 空格就算1个。
echo $myname         $myname

# 强制多个空格输出
echo "11$myname          $myname"

unset myname

echo "22$myname          $myname"

mywife="baby"
readonly mywife
unset mywife
#mywife="baby two"

big_var="8848"
echo $big_var
unset big_var
echo "big_var还存在吗？？打印big_var = $big_var"

