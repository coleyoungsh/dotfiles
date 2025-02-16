# Created by newuser for 5.9
export PS1="%{%F{39}%}%n%{%F{45}%}@%{%F{51}%}%m %{%F{195}%}%1~ %{%f%}$ "
export EDITOR="nvim"
export BROWSER="zen-browser"
export ZK_NOTEBOOK_DIR="/home/cole/Documents/notes/"
export STARSHIP_CONFIG="/home/cole/.config/starship/starship.toml"
export TERM=xterm-256color

eval "$(zoxide init zsh)" # setup zoxide
eval "$(starship init zsh)" # setup starship

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

alias cd='z' # zoxide
alias ls='eza -al'
alias t='todo.sh'
alias cat='bat'
alias lg='lazygit'
