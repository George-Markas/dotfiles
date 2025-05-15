#!/bin/sh

case "$BLOCK_BUTTON" in
    1) setsid -f "$TERMINAL" pavucontrol ;;
    3) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle; kill -42 $(pidof dwmblocks) ;;
    4) wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+; kill -42 $(pidof dwmblocks) ;;
    5) wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-; kill -42 $(pidof dwmblocks) ;;
esac

vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(echo "$vol_info" | grep -o "MUTED")

if [ -n "$muted" ]; then
    icon="ﱝ "
    vol_perc="Mute"
else
    vol_perc="$(echo "$vol_info" | awk '{printf "%.0f", substr($0,9,4) * 100}')"
    case 1 in
        $((vol_perc >= 65)) ) icon="墳 " ;;
        $((vol_perc >= 30)) ) icon="奔 " ;;
        * ) icon="奄 " ;;
    esac
    vol_perc="$vol_perc%"
fi

echo "[$icon$vol_perc]"
