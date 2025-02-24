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
alias grep='rg'
alias mq='msmtp-queue'
alias mqf='msmtp-queue -r'
alias kd='khard'
alias vd='vdirsyncer'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export PS1="%{%F{39}%}%n%{%F{45}%}@%{%F{51}%}%m %{%F{195}%}%1~ %{%f%}$ "
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export TERM="xterm-256color"

export EDITOR="nvim"
export BROWSER="zen-browser"

# zk notes
export ZK_NOTEBOOK_DIR="/home/cole/Documents/notes/"

# starship config
export STARSHIP_CONFIG="/home/cole/.config/starship/starship.toml"

# msmtpq dirs
export MSMTPQ_Q="${XDG_DATA_HOME:-$HOME/.local/share}/mail/queue"
export MSMTPQ_LOG="${XDG_DATA_HOME:-$HOME/.local/share}/mail/queue/msmtpq.log"

# catppuccin fzf
export FZF_DEFAULT_OPTS="--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a --multi"

# hyprland
export XCURSOR_SIZE=24
export HYPRCURSOR_SIZE=24
