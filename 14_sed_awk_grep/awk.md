# shell中的awk

awk这个名字是3个开发人员的姓氏。 awk主要是处理每一行文件流。延伸出来的作用是awk写一些类似于c语言的代码，直接执行这些代码，而不需要进行编译。awk可以向office的xls一样，对流中的一些列数据进行计算。（前提是文件的格式本来就是有规律的。就好像linux中的配置文件，写法都是有规律的。）

### 用法

awk '{awk内置命令}'  流文件名
例如，流文件有3行。那么awk内置命令运行3次。


### 内置命令
内置命令有：

* print($0 $1 $2)
* system("date")
* 等等

另外内置命令有2个特殊的模块(或者叫函数)：

* BEGIN{}	不管流有多少行，BEGIN函数都是开始运行一次。
* END{}		不管流有多少行，END函数都会在结束前运行一次。
* {}			流有多少行，{}这个默认函数就会运行多少次。


### 实例

```
# 把passwd的流内容全部打印出来。也就是扫描一行，输出一行
#awk '{print $0}' passwd

# NR 表示 num of recoder ，$1 表示 第一列 ，$7 表示第7列，就是默认用什么shell。 FS 表示 流decode的时候列与列之间用什么分隔符。 OFS 表示 输出的时候用什么分隔。 “;” 表示命令之间的独立运行
#awk '{FS=":"; OFS="\t";print NR,$1,$7}' passwd
```

```
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


