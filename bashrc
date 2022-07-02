export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\h:\w$(__git_ps1 " (%s) ")\$ '

export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin
unset HISTFILE

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

shopt -s autocd
shopt -s globstar

[ -e /opt/homebrew/etc/bash_completion ] && . /opt/homebrew/etc/bash_completion

ulimit -n 10240

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"

export GOPATH="$HOME/dev/Go"

eval "$(direnv hook bash)"

. ~/.dotfiles/bash_functions
