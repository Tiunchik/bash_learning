#!/usr/bin/env bash
#
# Функции неправильно читают данные из массивов, передаваемых в них, для нормальной работы надо полученный массив
# передать во внутреннюю локальную переменную
#
#  представленные примеры - плохие, необходимо посмотреть еще
#
function readArray() {
    local myArray=("$@")
    echo "Received arrai is ${myArray[*]}"
}
array=(1,2,3,4,5)
echo "Prepaed array is ${array[*]}"
readArray ${array[*]}