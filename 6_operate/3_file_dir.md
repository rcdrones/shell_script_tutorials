# shell的file_dir的判断语法

Linux下访问万物皆文件。`ls -l`进行文件属性的查看。

```
log="./abc.txt"
dir="./8848"

# -r -w -x 表示read write execute
if [ -r $log ]; then
	echo can read
fi

#-d 判断是否目录存在
if [ -d        $dir      ];then
	echo this is dir
fi

#-f  判断文件是否存在
if [ -f $log ];then
	echo 文件是否存在
fi

```


运算符号  |  解释
----------  |  ----------
[ -r $log ][ -w $log ][ -x $log ] |
[ -f $log ] |
[ -d $log ] |
以下为不常用 | 
-b | file	Checks if file is a block special file; if yes, then the condition becomes true.	
-c | file	Checks if file is a character special file; if yes, then the condition becomes true.	
-g | file	Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.	[ -g $file ] is false.
-k | file	Checks if file has its sticky bit set; if yes, then the condition becomes true.	[ -k $file ] is false.
-p | file	Checks if file is a named pipe; if yes, then the condition becomes true.	[ -p $file ] is false.
-t | file	Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.	[ -t $file ] is false.
-u | file	Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.	[ -u $file ] is false.
-s | file	Checks if file has size greater than 0; if yes, then condition becomes true.	[ -s $file ] is true.
-e | file	Checks if file exists; is true even if file is a directory but exists.	[ -e $file ] is true.