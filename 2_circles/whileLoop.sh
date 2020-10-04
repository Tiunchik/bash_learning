#!/bin/bash
#
#Пример цикла whilr
#

var1=5
while [ $var1 -gt 0 ]
do
echo "Var1 is: $var1"
#Пример $(()) но с [] скобочками
var1=$[ $var1-1 ]
done
