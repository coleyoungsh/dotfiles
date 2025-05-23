source <(fzf --zsh)

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

export HISTFILE=$HOME/.cache/zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt SHARE_HISTORY

# Aliases
alias cd='z' # zoxide
alias ls='eza -al'
alias cat='bat'
alias lg='lazygit'
alias grep='rg'
alias mq='msmtp-queue'
alias mqf='msmtp-queue -r'
alias kd='khard'
alias vd='vdirsyncer'
alias mshuf='find . -type f,l -print0 | xargs -0 mpv --shuffle'
alias wl='wishlist'
alias irssi='ssh irssi'
alias nb='newsboat'
alias pb='podboat -a'
alias 1='rem -gaad -iCOLOR=1'
for d in {2..6} ; do
    alias ${d}='rem -gaad -iCOLOR=1 "*"'${d}
done

function zg() { zk "$@" && zk sync }

alias t="todo.sh"
function tg() { todo.sh "$@" && todo.sh sync }

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
