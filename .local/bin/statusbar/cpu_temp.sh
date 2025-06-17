#!/bin/sh

sensor="/sys/class/hwmon/hwmon3/temp1_input"

temp=$(( $(cat $sensor) / 1000 ))

echo "TEMP: $temp℃"
