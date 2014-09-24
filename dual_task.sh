#!/bin/sh
while true
do 
command1="ping www.baidu.com"
command2="ping www.163.com"
thisdate=`date "+%Y-%m-%d %H:%M:%S" `
# $command1
 $command1 >>b.txt & 
 sleep 2
  thispid=`ps -ef|grep ping |grep -v grep|awk '{ print $2}'`
  echo a $thisdate >>a.txt
  echo a $thispid >>a.txt
  echo a `date "+%Y-%m-%d %H:%M:%S" ` $thispid
  kill -2 $thispid
#$command2
 $command2 >>b.txt &
 sleep 2
  thispid=`ps -ef|grep ping |grep -v grep|awk '{ print $2}'`
 echo b $thisdate >>a.txt
 echo b $thispid >>a.txt
 echo b `date "+%Y-%m-%d %H:%M:%S" ` $thispid
 kill -2 $thispid
done
