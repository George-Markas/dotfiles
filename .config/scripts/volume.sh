#!/bin/sh

vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(echo "$vol_info" | grep -o "MUTED")

if [ -n "$muted" ]; then
    icon="󰸈"
    vol_perc="MUTED"
else
    vol_perc=$(echo "$vol_info" | cut -b 9-12 | awk '{print $1 * 100}')
    case 1 in
        $((vol_perc >= 65)) ) icon="󰕾" ;;
        $((vol_perc >= 30)) ) icon="󰖀" ;;
        $((vol_perc >= 1)) ) icon="󰕿" ;;
        * ) icon="󰝟" ;;
    esac
    vol_perc="$vol_perc%"
fi

echo "[$icon $vol_perc]"
