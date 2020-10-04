#!/usr/bin/env bash
#
# Для модификации перехваченных скриптом сигналов можно выполнить команду trap с новыми параметрами
#
trap "echo 'Ctrl-C is trapped.'" SIGINT
count=1
while [ $count -le 3 ]; do
  echo "Loop #$count"
  sleep 1
  count=$(($count + 1))
done

trap "echo ' I modified the trap!'" SIGINT
count=1
while [ $count -le 3 ]; do
  echo "Second Loop #$count"
  sleep 1
  count=$(($count + 1))
done

# Перехват сигналов можно и отменить, для этого достаточно выполнить
# команду trap, передав ей двойное тире и имя сигнала
trap -- SIGINT
echo "I just removed the trap"
count=1
while [ $count -le 3 ]
do
echo "Second Loop #$count"
sleep 1
count=$(( $count + 1 ))
done
