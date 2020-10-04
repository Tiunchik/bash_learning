#!/usr/bin/env bash
#
# Script добавления другого скрипта в crontab, работает отлично!
#
crontab -l >foocron
echo "30 10 * * * $PWD/testscript.sh" >>foocron
crontab foocron
rm foocron

# Удаление команды - crontab -r
