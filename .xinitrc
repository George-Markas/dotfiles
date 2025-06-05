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

# Battery applet
cbatticon --low-level 30 --critical-level 15 &

# Wallpaper
wallpaper.sh &

# Authentication agent
polkit-gnome-authentication-agent-1 &

exec dwm
