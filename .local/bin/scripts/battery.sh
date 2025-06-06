#!/bin/sh

# TODO: add low notification

#adapter="/sys/class/power_supply/ADP0"
battery="/sys/class/power_supply/BAT0"

#ac_conn=$(cat "$adapter/online" 2>&1)
bat_perc=$(cat "$battery/capacity" 2>&1)

case $(cat "$battery/status") in
    "Charging") icon="" ;;
    "Discharging" | "Full")
        case 1 in
            $((bat_perc >= 90)) ) icon=" " ;;
            $((bat_perc >= 60)) ) icon=" " ;;
            $((bat_perc >= 40)) ) icon=" " ;;
            $((bat_perc >= 20)) ) icon=" " ;;
            * ) icon=" " ;;
        esac
        ;;
    "Not charging") icon="" ;;
    "Unknown") icon="" ;;
esac

echo "[$icon $bat_perc%]"
