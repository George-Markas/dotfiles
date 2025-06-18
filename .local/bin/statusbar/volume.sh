#!/bin/sh

vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
muted=$(awk '{print $3}' <<< "$vol")

if [ -n "$muted" ]; then
    vol_perc="Muted"
else
    vol_perc="$(awk '{ printf "%d", $2 * 100 }' <<< "$vol")%"
fi

echo "VOL: $vol_perc"
