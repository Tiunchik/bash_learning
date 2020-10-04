#!/bin/bash
#
#Внутренние циклы и построчное чтение файла
#

IFS=$'\n'
for row in $(cat /etc/passwd)
do
  echo "Full row is: $row"
  IFS=:
  num=1
  
  for word in $row
  do
    echo "Word $num is $word"
    num=$[ $num+1 ]
  done
done


