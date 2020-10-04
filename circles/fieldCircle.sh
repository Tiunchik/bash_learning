#!/bin/bash
#
#Отработка разделителя полей, 
#По умолчанию оболочка bash считает разделителями полей следующие символы:
#    Пробел
#    Знак табуляции
#    Знак перевода строки
#Если bash встречает в данных любой из этих символов, он считает, что перед ним — следующее самостоятельное значение списка.
#
#Это можно перезадать изменив переменнау IFS
#
#Например задав её значение перевода на другую строку IFC=$'\n'
#
IFS=$'\n'
file='circle.sh'
#Команда cat читае содержимое файла
echo "Содержимое файла $file: "
num=1
for temp in $(cat $file)
do
echo "Строка $num - $temp"
num=$(($num+1))
done