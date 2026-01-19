#!/usr/bin/env zsh

copy_configs() {
    local arr=$1
    local max_len=0

    # For print alignment, strictly aesthetic 
    for src in ${(kP)arr}; do
        (( ${#src} > max_len )) && max_len=${#src}
    done

    for src dest in ${(kvP)arr}; do
        cp -r ${src} ${dest}
        printf "%-${max_len}s -> %s\n" "$src" "$dest"
    done
}

declare -A configs
configs=(
    # Source            # Destination
    .config/nvim        ~/.config
    .config/ghostty     ~/.config
    .config/starship    ~/.config
    Wallpapers/         ~/Pictures/Wallpapers
    .vimrc              ~/
    .zshrc              ~/
)

while true; do
    read $'choice?Any existing files will be overwritten. Proceed? [\e[32my\e[0m/\e[31mn\e[0m] '
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        copy_configs configs
        exit
    elif [[ "$choice" =~ ^[Nn]$ ]]; then
        echo "Bye!"
        exit
    else
        echo "Invalid input"
    fi
done
