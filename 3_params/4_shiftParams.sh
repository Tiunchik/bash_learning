#!/usr/bin/env bash
#
# Использование команды shift при работе с массивом параметров, стирает первый параметр, превращая второй в первый
# аналогично команде shift из JS
#
COUNT=1
while [ -n "$1" ]; do
  echo "Parameter #$COUNT is $1"
  COUNT=$(($COUNT + 1))
  shift
done
