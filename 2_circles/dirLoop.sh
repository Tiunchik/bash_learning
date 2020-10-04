#!/bin/bash
#
#обход файлов и папок в директории
#
directory=`pwd`
#Можно получить весь список файлов в директории передав туда её путь + "/*"
for file in $directory/*
do
if [ -d $file ]
then
echo "$file - это директория"
elif [ -f $file ]
then
echo "$file - это файл"
fi
done
