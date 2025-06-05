# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Compositor
picom &

# Notification daemon
dunst &

# Status bar
dwmblocks &

# Screenshot tool
flameshot &

# Network applet
nm-applet &

# Wallpaper
wallpaper.sh &

# Authentication agent
polkit-gnome-authentication-agent-1 &

exec dwm
