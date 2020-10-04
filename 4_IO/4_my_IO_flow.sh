#!/usr/bin/env bash
#
# Задать собственный поток ввода/вывода. У нас есть еще дескрипторы с 3 по 8 и мы можем задать их:
#
exec 3>>logfile
echo "This should be displayed on screen"
echo "This should be wrote in file" >&3
echo "And again this should be on screen"

#Перенаправить ввод в скрипте можно точно так же, как и вывод.
# Необходимо сохранить STDIN в другом дескрипторе, прежде чем перенаправлять ввод данных.

exec 6<&0
exec 0<logfile
while read LINE; do
    echo "$LINE"
done
exec 0<&6
read -p "Are you done now? "
echo "Your answer is $REPLY"

#Что бы закрыть дескриптор до завершения работы скрипта необходимо перенаправить его на &-
exec 3>&-