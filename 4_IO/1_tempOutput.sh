#!/usr/bin/env bash
#
#Пример временного перенаправления в поток ошибок через символ &!
#
echo "This is an error" >&2
echo "This is normal output"