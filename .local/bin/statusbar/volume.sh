#!/bin/sh

vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(echo "$vol_info" | grep -o "MUTED")

if [ -n "$muted" ]; then
    icon="^c#E84C58^ﱝ "
    vol_perc="Mute"
else
    vol_perc="$(echo "$vol_info" | awk '{printf "%.0f", substr($0,9,4) * 100}')"
    case 1 in
        $((vol_perc >= 65)) ) icon="墳 " ;;
        $((vol_perc >= 30)) ) icon="奔 " ;;
        $((vol_perc >= 1)) ) icon="奄 " ;;
        * ) icon="ﱝ " ;;
    esac
    vol_perc="$vol_perc%"
fi

echo "^c#CCCCCC^[$icon$vol_perc^c#CCCCCC^]^d^"
