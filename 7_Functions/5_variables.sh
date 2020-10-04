#!/usr/bin/env bash
#
# Переменные объявляемые без дескрипторов являются глобальными, как в JS!!!
#

#Пример:
function myfunc() {
  value=$(($value + 10))
}
read -p "Enter a value: " value
myfunc
echo "The new value is: $value"

#Локальные переменные создаются с помощью ключевого слова local, данная переменная будет существовать только
# в функции и на переменную с таким же именем снаружи не повлияет

function localfunc() {
  local temp=$(($value + 5))
  echo "The Temp from inside function is $temp"
}
temp=4
localfunc
echo "The temp from outside is $temp"
