#!/usr/bin/env bash
#
#Пример постоянного перенаправления вывода скрипта в файл посредством комады exec
#
exec 1>logfile
echo "This is a test of redirecting all output"
echo "from a shell script to another file."
echo "without having to redirect every line"

exec 1>>logfile
echo ""
echo "additional row"

exec 2>secondlog
echo "This info go to second file"

echo "But this go to the first log" >&1