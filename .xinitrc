# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOUSE ~/.Xresources

exec dwm
