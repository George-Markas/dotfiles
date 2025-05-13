#!/bin/sh

vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(echo "$vol_info" | grep -o "MUTED")

if [ -n "$muted" ]; then
    vol_perc="^c#E84C58^MUTED"
else
    vol_perc="$(echo "$vol_info" | awk '{printf "VOL %.0f%%", substr($0,9,4) * 100}')"
fi

echo "^c#CCCCCC^[$vol_perc^c#CCCCCC^]^d^"
