# Load .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Load .xprofile
[[ -f ~/.xprofile ]] && . ~/.xprofile

exec dwm
