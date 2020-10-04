#!/usr/bin/env bash
#
# команда return позволяет возвращать значения из функций
#

function returnFun() {
  read -p "Enter a value: " VALUE
  echo "Adding value"
  return $(($VALUE + 10))
}
returnFun
echo "The new values is $?"

# Переменная $? хранит код возрата последней выполненной команды
# Максимальное число которыео может вернуть команда return 255
