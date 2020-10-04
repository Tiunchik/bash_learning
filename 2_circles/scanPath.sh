#!/usr/bin/env bash
#
# Сканирование всех файлов, сохранённых в переменных среды в PATH
#
#Транслятор символов, заменяет : на \n
#IFS=: - не нужна из-за применения транслятора символов
for folder in $(echo "$PATH" | tr ':' '\n'); do
  echo "Scanning folder - $folder"
  for file in "$folder"/*; do
    if [ -x "$file" ]; then
      echo "Find executable file - $file"
    fi
  done
done >log.txt

