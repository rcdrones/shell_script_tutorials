# shell中的循环语句

大致有 while for until select 4种语句。其中while 最常见。 for 用起来不是非常方便。 until相对少见，但是也要知道。 select 用在菜单内。

### while

```

while [ condition is true ]
do
	xxx
done

example:

a=0
while [ $a -lt 10 ]
do
	echo -n "$a"
	a=`expr $a + 1`
done


```

### for

```
for val in 0 1 3 5 4 7
do
	echo  "$val"
done


for f in $HOME/.bash*
do
	echo $f
done

#还有一种类似于c的写法
for ((i=0;i<10;i++))
do
	echo $i
done


```

### until

```
until [ condition is false ]
do
	xxx
done


b=0
until [ $b -ge 10 ]
do
	echo $b
	b=`expr $b + 1`
done

```

### selsct

```
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

```

## break 和continue

break：用来跳出当前循环体。循环结束！

continue：用来跳出当前循环，但是循环继续运行！

以上2条语句和c语言的用法几乎是一样的。


## [xxx] [[xxx]] \(1 2 3) ((i++)) 解析
 
 条件判断下面有[xxx] [[xxx]]
 
 []比较古板，在比较的时候只支持 -gt -ge -lt -le == !=
 
[]&&[]
[]||[]
 

[[]], 内部支持 > < 不支持 <= >=

[[ xxx > yyy && aaa < bbb ]] 

[[ xxx > yyy || aaa < bbb ]] 


(xxx) 和条件判断没什么关系，shell的数组定义里用到。 还有就是(ls;mkdir aaa;),表示开一个子shell，让命令顺序执行。

**((yyy)) 在循环中用于类似于c语言的写法。还有就是((i++))用来简单的进i累加。总之((xxx))  xxx里面的内容基本就是c语言的写法。**

 
 