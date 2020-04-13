# shell中的变量特殊用法

### echo -e 支持转意字符
默认echo不支持转意字符。比如\n 、\t这些

```
#无法转意
echo ggg\n bbb

#空格表示参数的间隔
echo nihao            nihao

#双引号可以让空格1：1显示出来
echo "nihao           nihao"

# -e表示支持转意字符

echo -e "aaaaaaanihao    \n  bbbbbb "

# 增加换行
echo 

```


### 命令的返回值赋值到变量里

```
aa=`cd ~;ls -l`

echo $aa

runtime=`date ; uptime`
echo "Uptime is $runtime"
echo

```


### 一些特殊的赋值语法

```
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
```

#### 总结：

* :-	如果变量为空，赋值返回default，var不变化
* :+	如果变量不为空，赋值返回default，var不变化
* :=	如果变量为空，赋值返回default，var也变成default
* :?	如果变量为空，直接报错