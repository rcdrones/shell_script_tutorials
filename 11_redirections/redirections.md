# shell中的命令重定向

### 命令输出到文件

```
who > 11.txt
who >> 11.txt
```

### 文件输入到命令

```
wc -l < 1.txt
```

### 带tag的据流输入到命令 

```

wc -l <<tag
	adwqdwq
	qwdqwd
	dqw
tag
```


### 命令输出的重定向
有时候希望命令不要有任何输出。那就用dev/null，linux的黑洞
2表示err	1表示 output   0 表示input

```
ls > /dev/null 2>&1
```

### 管道
一个命令的输出，变成另外一个命令的输入。有2种办法：通过临时文件进行信息交换，或者用管道进行信息交换。

```
##用过文件来做中间介质
who > hh
wc -l <hh


##通过管道
who | wc -l
```

管道效率高于文件交互。

