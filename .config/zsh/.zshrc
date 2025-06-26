# Load aliases
[[ -r "${ZDOTDIR:-$HOME/.config/zsh}/.zaliases" ]] && source "${ZDOTDIR:-$HOME/.config/zsh}/.zaliases"

# Tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-$ZSH_VERSION"

# Vi mode
bindkey -v
export KEYTIMEOUT=1
function zle-keymap-select() {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;
        viins|main) echo -ne '\e[5 q';;
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q'; }

# Fix delete key
bindkey "^[[3~" delete-char

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history
setopt share_history

# Display git branch
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " %F{white}(%f%F{magenta}%b%f%F{white})%f"
precmd() {
    vcs_info
}

# Prompt style
setopt prompt_subst
PROMPT='%B%F{red}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f %F{magenta}%(3~|.../%2~|%~)%f%F{red}]%f%F{white}$%f%b${vcs_info_msg_0_} '

# Load plugins
source "/usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh"
