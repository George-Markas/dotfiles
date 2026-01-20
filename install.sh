#!/usr/bin/env zsh

sync_configs() {
    local arr=$1
    for src dest in ${(kvP)arr}; do
        rsync -avu "$src" "$dest"
    done
}

declare -A configs
configs=(
    # Source            # Destination
    .config/nvim        ~/.config
    .config/ghostty     ~/.config
    .config/starship    ~/.config
    Wallpapers/         ~/Pictures/Wallpapers
    .gitconfig          ~/
    .vimrc              ~/
    .zshrc              ~/
)

while true; do
    read $'choice?Destination files that are older be overwritten. Proceed? [\e[32my\e[0m/\e[31mn\e[0m] '
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        sync_configs configs
        echo "\n\e[33mDone. Don't forget to set a valid email in .gitconfig!\e[0m"
        exit
    elif [[ "$choice" =~ ^[Nn]$ ]]; then
        echo "Bye!"
        exit
    else
        echo "Invalid input"
    fi
done
