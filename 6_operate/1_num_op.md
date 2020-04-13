# shell的运算和判断语法

shell里主要有整数运算、字符串判断、文件判断的语法：

### 整数运算

```
a=100
b=200

echo `expr $a + $b`
```

运算符号  |  例子
----------  |  ----------
+  |  `expr $a + $b`
-  |  `expr $a - $b`
\\*  |  `expr $a \* $b`
/  | `expr $a / $b`


### 整数判断

```
a=100
b=200


#if [ $a -eq $b ]; then
if [ $a == $b ]; then
	echo 不相等
else
	echo 相等
fi

#if[ $a -ne $b ]; then
if [ $a != $b ]; then
	echo 不相等2
fi

if [ ! $a -gt $b ]; then
	echo  '! $a -gt $b'
fi

if [ $a -lt $b ]; then
	echo '$a -lt $b'
fi

if [ ! $a -ge $b ];then
	echo '! $a -ge $b'
fi

if [ $a -le $b ]; then
	echo '$a -le $b'
fi



```

总结：

运算符号  |  另一种表达方式
----------  |  ----------
==  |  -eq
!=  |  -ne
-gt  |  
-lt  | 
-ge  | 
-le  | 
! |
-o |
-a |



```
if [ $num -gt $min -a $num -lt $max ]; then
	echo $max '>' $num '>' $min 
fi



if [ $num -gt 100 -o $num -le -100 ]; then
	echo 111
fi

if [ ! $num -gt 100 ]; then 
	echo 222
fi

```
