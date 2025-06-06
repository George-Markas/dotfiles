# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export OPENER="xdg-open"
export AUDIO_PLAYER="mpv"
export VIDEO_PLAYER="mpv"

# XDG user directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Add stuff to PATH
export PATH="$HOME/.local/bin/scripts:/usr/lib/polkit-gnome:$PATH"

# Set zsh configs directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Start graphical session
if [[ -z "$DISPLAY" ]] && [[ "$XDG_VTNR" = 1 ]]; then
    exec startx
fi
