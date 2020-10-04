#!/bin/bash
#
#Примеры команды breaak + continuer
#break - прервать цикл, continue - пропустить один круг
#

for num in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
  if [ $[$num%2] -ne 0 ]
  then
    continue
  fi
#Не обязательно выводить информацию в консоль, мы можем сохранить её в файл
  echo "Num is $num"
  if [ $num -gt 13 ]
  then
    break
  fi
#Перенаправление информации из цикла в файл
done > log.txt
echo "Done"
