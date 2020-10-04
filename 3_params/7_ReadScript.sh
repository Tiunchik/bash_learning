#!/usr/bin/env bash
#
# Использование команды read, для получение данных от пользователя
#
# команда -n не переводит ввод на новую строку, и пользователь вводит данные в той же строке, где и появилась надпись
echo -n "Enter your name: "
read NAME
echo "Hello $NAME, glad to see your!"

#вариант где read ечатает в консоль сам
read -p "Write your first and second name: " FIRST SECOND
echo "Gretings, $FIRST $SECOND"

#если не задать имена переменных, то вся введённая информация будет помещена в переменную REPLY
read -p "How old are you: "
echo "You are $REPLY years old"

#если выполнение скрипта должно быть продолжено даже если пользователь не введёт никакие данные
# то можно использовать параметр -t /время в секундах/, например так:
if read -t 15 -p "Enter your name: " name; then
  echo "Hello $name, welcome to my script"
else
  echo "Sorry, too slow! "
fi

#ключ команды -s предотвращает отображение на экране данных, вводимых с клавиатуры. Используется для паролей.
#на самом деле данные вводяться, но текст букв идентичен цвету экрана
read -s -p "Enter your password: " PASS





