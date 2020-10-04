#!/usr/bin/env bash
#
# Linux представляет возможность запуска скриптов по расписанию, через команду at [ -f filename ] time и планировщик
# заданий cron
# Эта команда распознаёт множество форматов указания времени.
#    Стандартный, с указанием часов и минут, например — 10:15.
#    С использованием индикаторов AM/PM, до или после полудня, например — 10:15PM.
#    С использованием специальных имён, таких, как now, noon, midnight.
#
# В дополнение к возможности указания времени запуска задания, команде at можно передать и дату,
# используя один из поддерживаемых ей форматов.
#
#    Стандартный формат указания даты, при котором дата записывается по шаблонам MMDDYY, MM/DD/YY, или DD.MM.YY.
#    Текстовое представление даты, например, Jul 4 или Dec 25, при этом год можно указать, а можно обойтись и без него.
#    Запись вида now + 25 minutes.
#    Запись вида 10:15PM tomorrow.
#    Запись вида 10:15 + 7 days.
#
# Запуск - at -f ./testscript.sh now
# Список задач в планировщике - atq
# Остановить задачу - atrm
