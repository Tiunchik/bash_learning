#!/usr/bin/env bash
#
# Проверка параметров перед запуском
#
# Переменная $# содержит количество параметров переданных в скрипт
echo "There is $# params"

#Не корректный скрипт проверки параметров, лучше сразу проверять наличие параметров в целом
if [ -n "$1" ]; then
  echo "Params \$1 is $1"
else
  echo "No params was found"
fi

#Мы можем вызвать последний переданный параметр с помощью команды ${!#}
echo "The last param is ${!#}"

# Проверка наличия параметров в целом:
# Пример 1
if [ $# -eq 0 ]; then
  echo -e "No parameters found"
  exit 1
fi
# Пример 2
if [[ "${1:-unset}" == "unset" ]]; then
    echo -e "No parameters found. "
    exit 1
fi
