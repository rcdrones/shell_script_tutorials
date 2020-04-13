# shell 的 () 、 (()) 、[] 、 [[]] 区别

这4个符号，非常像，但是又都完全不同。 笔者在看别人的脚本的时候就经常深陷其中。

### ()单括号
主要有3个作用：

1. 作为数组的初始化定义：

```
# () 初始化定义数组

a=("haha" 1 2 3 "good")

echo ${a[4]}

if [ ${a[1]} -gt 0 ]; then
	echo 4444
fi
```

2. 新开一个子shell，并且执行命令：

```
# () 表示新开一个shell，然后按照顺序执行

b=$(ls;who)

echo $b

c=$`ls;ls`
echo $c

# ()内部的命令输出，全部输出到aa.txt里
(ls;who)>aa.txt
cat aa

```


### (())双括号
双括号主要用于让 **shell支持C语言的运算或者判断语句的写法**。

```
i=10
while ((i))
do
	if ((i>5));then
		echo $i
		((i--))
	else
		break
	fi
done
```

### []中括号
中括号主要用在shell的判断语句中，可以理解为标准的shell判断 true or false的写法

```
i=13

if [ $i -gt 10 -a $i -lt 20 ];then
	echo qqq
fi

if [ $i -gt 10 ] && [ $i -lt 20 ] ; then
	echo www
fi	

```


### [[]]双中括号
双中括号是对单中括号的扩展，比如要用到正则表达式，就必须用双中括号。此外用在比较大小的语法中，写法相对友好一点（类似于C语言的写法）。


```
if [[ $i >=13 && $i <=14 ]];then
	echo eee
fi
```
