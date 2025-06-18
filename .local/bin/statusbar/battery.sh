#!/bin/sh

battery="/sys/class/power_supply/BAT0"
adapter="/sys/class/power_supply/ADP0"

bat_perc="$(cat "$battery/capacity" 2>&1)%"
ac_conn=$(cat "$adapter/online" 2>&1)

if [ $ac_conn -eq 1 ]; then
    if [ "$(cat "$battery/status")" = "Charging" ]; then
        label="CHRG"
    else
        label="AC"
    fi
else
    label="BAT"
fi

echo "$label: $bat_perc"
