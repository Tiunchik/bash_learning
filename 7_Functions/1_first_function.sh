#!/usr/bin/env bash
#
# Простой пример функции
#
function foo() {
  echo "This is an example of using a function"
}
COUNT=1
while [ $COUNT -le 10 ]; do
  foo
  COUNT=$(($COUNT + 1))
done
echo "All loop is done"
foo
echo "End of script"
