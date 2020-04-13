#!/bin/bash


# s表示substitution 替换的意思
# 以下语法只替换一次
sed 's/uart/Uart/' <config.txt >new.txt


echo “我是好人，好人！大好人！！” | sed 's/好人/坏人/'

echo “我是好人，好人！大好人！！” | sed 's/好人/坏人/g'


echo “我是好人，好人！大好人！！” | sed 's/好人/坏人/2'

# g = global
# 2 = 匹配2次
# i = 大小写不敏感，insensitive
echo "我喜欢Linux LINUX LINux" | sed 's/linux/centos/gi'

echo "albolo is good" | sed "s/^./A/"


# ^.. 表示匹配到任意2个字符。  //中间没有任何字符。表示匹配到后，删除掉。
echo "albolo is good" | sed "s/^..//"

#表示在5-7行前面添加一个#
sed '5,7s/^/#/' lines.txt

echo  


echo "good%%morning" > qq
# -r 表示支持正则表达式  
#	
#
sed -r 's/(.+)%%(.+)/\2\t\1/' qq

# -i 表示产生 qq 和 qq_back  

sed -i_back  -r  's/(.+)%%(.+)/\2\t\1/' qq

#sed '' 表示只显示文件的全部内容
sed '' qq_back

echo 666666
# -n 表示默认不显示，只有匹配到了才显示对应的内容， p表示打印
sed -n '1,2p' lines.txt

sed -n "1p" lines.txt

sed -n '/^dto/p' config.txt

sed -n "/dto/p" config.txt

# sed 总结：
# s表示替换      s/aaa/bbb/ig		把aaa用bbb进行替换。大小写不敏感，全局替换, -r 表示支持扩展的正则表达式 -i 表示备份源和目标文件
# p表示打印		-n "1p" "1,5p"	打印第几行	"/abs/p" 匹配abs后，打印对应的行
# d表示删除		几乎和p类似。但是他是匹配到就删除对应的行。
# w表示写入		匹配到某行，然后写入到某个文件
# i\			匹配到某行之后，在某行的前面插入一行。注意是插入到匹配行之前的那行！

sed '1,2d' lines.txt	

sed "/dto/d" config.txt

sed "/aa/d" people

# 表示匹配到aa这行，然后写入到haha1这个文件内。
sed -n "/aa/w haha1" <people 

sed -n "/^dto/w nnn" config.txt

echo ////////////////////
sed "s/dto/#dto/g" config.txt

# 希望在uart之前加入 # ，可以用下面的语句。  & 表示之前的匹配项， # 表示要在前面加入的内容。
sed "s/uart/#&/g" config.txt

# -e 表示多个匹配后的命令 串联执行。  \u&  表示 uppercase    \l 表示lowcase     &表示匹配后的内容进行后期操作！ 
echo "124324  hahahaha"   |  sed -e  "s/ha/www/" -e "s/[a-z]/\u&/g" 

# -f 表示运行sed的脚本， 这个脚本叫 sed1.sh  ， 而对应操作的文件是 people  .  sed 也可以看作一门shell 外置命令的语言
# sed -f sed1.sh  people  
