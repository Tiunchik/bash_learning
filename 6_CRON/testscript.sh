#!/usr/bin/env bash

# простой тестовый скрипт

count=1
while [ $count -le 10 ]; do
  echo "Loop #$count"
  sleep 10
  count=$(($count + 1))
done
