#!/usr/bin/env bash
#
# Показать три параметра, с которыми запускается данный скрипт, к параметрам после 9 обращаются как ${10}
#
echo $0
TOTAL=$[$1 + $2 + $3]
echo "The first param is $1"
echo "The second param is $2"
echo "The third param is $3"
echo "Sum of all params is $TOTAL"