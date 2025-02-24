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

eval "$(zoxide init zsh)" # setup zoxide
eval "$(starship init zsh)" # setup starship
