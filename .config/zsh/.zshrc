# Load aliases
[[ -r "${ZDOTDIR:-$HOME/.config/zsh}/.zaliases" ]] && source "${ZDOTDIR:-$HOME/.config/zsh}/.zaliases"

# Tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-$ZSH_VERSION"

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

# Git branch
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " %F{white}(%f%F{magenta}%b%f%F{white})%f"
precmd() {
    vcs_info
}

# Change directory when quitting lf
lfcd() {
	cd "$(command lf -print-last-dir "$@")"
}

# Prompt style
setopt prompt_subst
PROMPT='%B%F{9}[%f%F{11}%n%f%F{10}@%f%F{12}%m%f %F{13}%~%f%F{9}]%f%F{15}$%f%b${vcs_info_msg_0_} '

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
