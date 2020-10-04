#!/bin/bash
#
# Циклы в bash
#
cd /home
var1=`ls`
number=1
for temp in $var1
do
echo "Папка №$number - это $temp"
number=$(($number+1))
done

#пример цикла со сложными значениями
for temp in "the second" "the third" "I'll do it"
do
echo "This is: $temp"
done
