export PS1="%{%F{39}%}%n%{%F{45}%}@%{%F{51}%}%m %{%F{195}%}%1~ %{%f%}$ "
export EDITOR="nvim"
export BROWSER="zen-browser"
export ZK_NOTEBOOK_DIR="/home/cole/Documents/notes/"
export STARSHIP_CONFIG="/home/cole/.config/starship/starship.toml"
export TERM=xterm-256color

# catppuccin for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

eval "$(zoxide init zsh)" # setup zoxide
eval "$(starship init zsh)" # setup starship

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Aliases
alias cd='z' # zoxide
alias ls='eza -al'
alias t='todo.sh'
alias cat='bat'
alias lg='lazygit'
alias yy='yazi'
alias grep='rg'
