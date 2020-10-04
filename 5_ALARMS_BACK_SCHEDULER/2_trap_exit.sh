#!/usr/bin/env bash
#
# Перехват сигнала EXIT
#

# Выведет сообщение при завершении работы скрипта
trap "echo 'Goodbay $USER'" EXIT

count=1
while [ $count -le 5 ]; do
  echo "Loop #$count"
  sleep 1
  count=$(($count + 1))
done