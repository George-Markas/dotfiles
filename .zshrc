export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION=true

zstyle ':omz:update' mode reminder

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit

# Delete word behind cursor with Ctrl + Backspace
bindkey '^H' backward-kill-word

# History
export HISTSIZE=10000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history
setopt share_history

# Aliases
alias ls="ls -ahN --color=auto --group-directories-first"
alias ll="ls -lahN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkdir="mkdir -pv"
alias vim="nvim"

# Set default editor
export EDITOR="nvim"
