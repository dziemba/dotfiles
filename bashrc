export PS1="\u@\h:\w$ "
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GOPATH="$HOME/Dropbox/Dev/Go"

export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd" 

export EDITOR="vim"

alias l="ls -alh"

alias dropbox="cd $HOME/Dropbox"
alias dev="cd $HOME/Dropbox/Dev"
alias godev="cd $GOPATH/src/github.com/dziemba"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan$(date +%s).jpg"

