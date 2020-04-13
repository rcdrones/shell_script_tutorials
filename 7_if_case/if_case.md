#shell中的分支判断语法

主要有if和case 2种语法


### if

```
if [ condition ];
then 
	xxx
fi
```

```
if [ condition ]; then
	xxx
else
	xxx
fi

```

```
if [ condition ]; then
	xxx
elif [condition]; then
	xxx
else
	xxx
fi
```


### case

```
a="haha"

case $a in
	"aaa")
		xxx
		;;
	"bbb")
		xxx
		;;
	"haha")
		xxx
		;;
	*)
		xxx
		;;
esac	

```

```
aa=${1}
bb=${2}

case aa in
	"-f")
		echo $bb
		;;
	"-d")
		echo $aa $bb
		;;
	*)
		echo 提示默认选项……
		exit 1
		;;
esac

```