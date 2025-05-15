#!/bin/sh

# Clickability test
case "$BLOCK_BUTTON" in
    1) notify-send "$(cal)" ;;
esac

clock=$(date '+%a %d/%m/%y %H:%M')

echo "[$clock]"
