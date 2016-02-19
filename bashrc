export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h:\w$(__git_ps1 " (%s) ")\$ '

export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/ruby/bin:$HOME/.gotools/bin
unset HISTFILE

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

shopt -s autocd
shopt -s globstar

[ -e /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

ulimit -n 10240

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"

export GOPATH="$HOME/dev/Go"
export NODE_PATH="/usr/local/lib/node_modules"
export BUNDLE_JOBS="4"

eval "$(rbenv init -)"
eval "$(direnv hook bash)"

. ~/.dotfiles/bash_functions
