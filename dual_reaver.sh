#!/bin/sh
echo ==start cracking==

while true
do 
command1="sh /root/Music/task_1.sh"  #reaver command 1
command2="sh /root/Music/task_2.sh"  #reaver command 2
thisdate=`date "+%Y-%m-%d %H:%M:%S" `
# $command1
echo =====1===========1============1================1===============1==============
 $command1 & 
 sleep 60
  thispid=`ps -ef|grep reaver |grep -v grep|awk '{ print $2}'`
  echo a $thisdate >>a.txt
  echo a $thispid >>a.txt
  echo a `date "+%Y-%m-%d %H:%M:%S" ` $thispid
  kill -2 $thispid
#$command2
echo =========2=============2==============2=============2===========2=========2
 $command2 &
 sleep 60
  thispid=`ps -ef|grep reaver |grep -v grep|awk '{ print $2}'`
 echo b $thisdate >>a.txt
 echo b $thispid >>a.txt
 echo b `date "+%Y-%m-%d %H:%M:%S" ` $thispid
 kill -2 $thispid
done

