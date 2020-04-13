#!/bin/bash

#echo 111

# grep “查找的内容”  文件名
# grep 是一行一行向下寻找，然后符合的内容，直接整行输出。
grep boy people

grep girl people

who | grep "pi"

:<<!
# 简单的正则表达式
.	匹配单个字符
*	匹配0或n次
?	匹配0或1次
+	匹配1或多次
{N}	匹配n次
{N，}	匹配N或者N+次
{N，M}	匹配N到M次
[0-9]	[a-z]	[A-Z]	匹配单个字符，范围是0-9 ...
[ABS]	匹配A or B or S
^	$	^为行首匹配，$是行末匹配
[^0-9]	表示除了0-9之外
\b	单词，单词，单词的边界。注意是单词！！ this is boy.	is是单词，2边都是空格
\<	\>	词首、词尾
\w	匹配字母、数字、下划线	== [A-Za-z0-9_]
\W	非单词字符，就是\w取反
a|b|c	匹配a或者b或者c
!


grep -n ^dto config.txt #表示以dto开头的行。并且-n为输出行号
grep -v dto config.txt # -v 表示 结果除了dto之外的行全部输出
grep -i aa people # -i 表示不管大小写，进行匹配

echo hhhhh
grep -i aa *	#显示匹配的文件名和对应的一行内容
echo ----
grep -i aa -l *  # -l 表示 之显示查找到的文件名，不显示匹配后的内容


grep -c -i aa people # -c表示匹配到几行

#posix = potable operation system interface of unix 可移植的unix操作系统
#posix的字符集

:<<!
字符类	说明
[:digit:]	任何数字
[:xdigit:]	任何十六进制数字
[:alpha:]	任何字母
[:lower:]	任何小写字母
[:upper:]	任何大写字母
[:alnum:]	任何字母或数字
[:cntrl:]	ASCII控制字符（ASCII 0~31 和 ASCII 127）
[:punct:]	不属于[:alnum:]和[:cntrl:]的任何字符
[:blank:]	空格或制表符（[\t ]）
[:space:]	任何空白字符，包括空格（[\f\n\r\t\v ]）
[:print:]	任何可打印字符
[:graph:]	同[:print:],但不包括空格

在 grep里面用需要再用[]打包起来
!


echo ggggggggg
grep [[:digit:]] config.txt

