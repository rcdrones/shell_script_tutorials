# shell里面的单双引号

变量赋值的时候，有时候不用引号。有时候用双引号，又有时候用单引号。到底有什么区别？


```
echo 'hello;world'

echo hello\;www

echo hello \n www

echo -e "he \n www"
 
echo 我有\$200美金 

echo "我有\$200美金"

echo '我有$200美金'



name="haha"

echo " $name 是否有 \$200 美金？？  [`date +%m-%d`] ?"

echo "It's a good job!"

#echo 'It\'s Shell Programming'  这里必须要用双引号


```

#### 总结：

"xxx" xxx是通过计算在返回的， 'xxx' xxx不通过计算，无脑返回原样