#!/usr/bin/env bash
#
#Перенаправление потока ввода с клавиатуры на файл и построчное чтение через read
#

exec 0<logfile
COUNT=1
while read LINE; do
  echo "$COUNT. $LINE"
  COUNT=$(($COUNT + 1))
done
