#!/usr/bin/env bash
#
# Команда trap позволяет ловить сигналы линукс, в данном случае
# мы ловим сигнал от нажатия клавиш - Ctrl-C - завершение
# работы скрипта
#
trap "echo 'Trapped Ctrl-C'" SIGINT

#Остальной скрипт выполняется сам по себе, но если нажать Ctrl-C то будет написано сообщение Trapped Ctrl-C
echo "This is a test script"
count=1
while [ $count -le 10 ]; do
  echo "Loop #$count"
  sleep 1
  count=$(($count + 1))
done
