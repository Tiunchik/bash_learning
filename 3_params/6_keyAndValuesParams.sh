#!/usr/bin/env bash
#
#Считывание парамертов по ключам
#
while [ -n "$1" ]; do
  case "$1" in
  -a) echo "Found -a option" ;;
  -b)
    PARAM="$2"
    echo "Found key -b with value $PARAM"
    shift
    ;;
  -c) echo "Found -c option" ;;
  --)
    shift
    break
    ;;
  *) echo "$1 is not an option" ;;
  esac
  shift
done
count=1
for param in "$@"; do
  echo "Parameter #$count: $param"
  count=$(($count + 1))
done
