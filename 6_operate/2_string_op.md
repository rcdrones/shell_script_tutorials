# shell的string判断语法

string变量一般在shell里面的**定义赋值**如下：

```
p1="rcdrones"

p2=$p1+'rcdrones'

echo $p1 $p2

p1=
p2=
```

**单引号内部的内容是不进行计算直接直接返回给shell的**  

**双引号的内部内容，是经过计算（或者替代），在返回给shell的**


### string的判断方式

运算符号  |  解释
----------  |  ----------
[ $p1 ]  |  判断是否为空
[ $p1 = $p2 ]  |  
[ $p1 != $p2 ]  | 
[ -z $p3 ]  |  当p3 为空时候，返回true。非空的时候 返回 false. 判断是否zero length
[ -n "$p4" ]  | 当非空的时候返回true。空的时候返回false。**注意变量名要加双引号**。速记 not zero


