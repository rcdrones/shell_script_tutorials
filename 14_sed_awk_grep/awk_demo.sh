#!/bin/bash


# print 是awk里面的内部命令。 $0 表示每行内容 $1 第一列 $2 表示第二列
awk '{print $0}' lemo

awk	'{print NR,$1,$3}' lemo

# lemo 有几行，hahahaha就打印几行
awk '{print "hahahaha"}' lemo

# 这里没有输入流，awk就从键盘里得到每个流，ctrl+c为结束awk
#awk '{print "ffffff"}'

# awk的查找功能，把包含31内容的这行进行输出
awk '/31/' lemo

# 同上，并且只打印第一列
awk '/31/ {print $1}' lemo

# 把结果输出到某个文件内
awk '{print $1 , $3 > "111.txt"}'  lemo


awk 'BEGIN{print "Name\tOld\twage "}{print $0}END{print "good day sir!"}' lemo

awk '{sum=sum+$3}END{print sum/NR}' lemo

awk '{print "1111111"} BEGIN{print "00000"} END{print "9999999"}' lemo

awk '{if($2>30){print $0}}' lemo

awk '{if($2>30){print $0;exit}}' lemo

awk 'BEGIN{print int(47.4494), sqrt(2)} {print "444 "}' lemo

awk 'BEGIN {system("date")}'


awk -f fac.awk

#awk '{print $0}' passwd

#awk '{FS=":"; OFS="\t";print NR,$1,$7}' passwd




