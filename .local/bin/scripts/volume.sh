#!/bin/sh

vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(echo "$vol_info" | grep -o "MUTED")

if [ -n "$muted" ]; then
    icon=""
    vol_perc="Mute"
else
    vol_perc="$(echo "$vol_info" | awk '{printf "%.0f", substr($0,9,4) * 100}')"
    case 1 in
        $((vol_perc >= 60)) ) icon="" ;;
        $((vol_perc >= 30)) ) icon="" ;;
        * ) icon="" ;;
    esac
    vol_perc="$vol_perc%"
fi

echo "[$icon  $vol_perc]"
