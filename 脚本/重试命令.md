# 原因
在`yarn`VSCode源码时，由于网络原因会编译失败。此脚本检测到命令运行失败返回`$?!=0`,于是在此条件下重复执行`yarn`命令。

# 脚本
```sh
#! /bin/bash

startTimeStamp=`date +%s`
let i=1
yarn
while (($? != 0))
do
	echo "第$i次重试"
	((++i))
	yarn
done
endTimeStamp=`date +%s`
total=`expr $endTimeStamp - $startTimeStamp`
echo "共重试了$i次,用时${total}秒"
```