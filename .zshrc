# Created by newuser for 5.9
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias cl="clear" # faster clear
alias ls="eza --icons=always" # use eza for ls
alias cd="z" # use zoxide for cd

alias bfi="brew bundle --file=~/.config/homebrew/Brewfile"
alias bfc="brew bundle dump --file=~/.config/homebrew/Brewfile"
alias bfr='rm -f ~/.config/homebrew/Brewfile && brew bundle dump --file=~/.config/homebrew/Brewfile'


# Zsh Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh Syntax Highlighting (must be sourced last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# History

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
