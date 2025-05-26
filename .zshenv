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

# Add status scripts to path
export PATH=~/.local/bin/statusbar:$PATH

# Zsh configs directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
