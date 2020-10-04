#!/usr/bin/env bash
#
# Сканирование всех файлов, сохранённых в переменных среды в PATH
#
IFS=:
for folder in $PATH; do
  echo "Scanning folder - $folder"
  for file in $folder/*; do
    if [ -x $file ]; then
      echo "Find executable file - $file"
    fi
  done
done >log.txt
