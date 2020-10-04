#!/usr/bin/env bash
#
# Запись вывода функции в переменную через echo, нет ограничений на количество символов вывода
#

function returnFun() {
  read -p "Enter a value: " VALUE
  echo $(($VALUE + 10))
}
RES=$( returnFun)
echo "The new values is $RES"