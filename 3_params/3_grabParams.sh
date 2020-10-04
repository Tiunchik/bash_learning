#!/usr/bin/env bash
#
# Мы можем захватить все параметры в одну строку с помощью команд $* или $@
# По факту все параметры передаваемые в командную строку /являются массивом
#
echo "Show all params with \$*: $*"
count=1
#Переменная s* содержит все позиции как единую строку, если убрать "" то bash сам распарсит её из за пробелов
for param in "$*"; do
  echo "Param $count is $param"
  count=$(($count + 1))
done

echo "------"
echo "Show all params with \$@: $@"
count=1
#Переменнавя $@ содержит все строки как отдельные параметры, и даже в "" это разные параметры, которые не надо парсить
for param in "$@"; do
  echo "Param $count is $param"
  count=$(($count + 1))
done