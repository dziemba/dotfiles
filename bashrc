export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h:\w$(__git_ps1 " (%s) ")\$ '

export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin
unset HISTFILE

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

shopt -s autocd
shopt -s globstar

[ -e /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"

export GOPATH="$HOME/dev/Go"
export NODE_PATH="/usr/local/lib/node_modules"
export BUNDLE_JOBS="4"

alias l="ls -alh"
alias be="bundle exec"
alias betest="RAILS_ENV=test bundle exec"
alias ber="bundle exec rake"
alias beguard="bundle exec guard -c"
alias bespec="bundle exec rspec"

alias dropbox="cd $HOME/Dropbox"
alias dev="cd $HOME/dev"
alias godev="cd $GOPATH/src/github.com/dziemba"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan\$(date +%s).jpg"
alias rubocop-diff-master="rubocop -R --force-exclusion \
  \$(ls \$(git diff --name-only master HEAD |grep \\\\.rb\$ |grep -v ^db/))"

eval "$(rbenv init -)"
eval "$(direnv hook bash)"

function git-clean-branches
{
  git branch --merged master |grep -v master$ |xargs git branch -d
  git branch -r |grep -v master$ |xargs git branch -rd
  git fetch --all
  git gc
  git branch -a
}

function rbenv-setup()
{
  rbenv install -s
  rbenv local
  gem update --system
  gem install bundler
  bundle
}

function rails-remigrate()
{
  ber db:drop
  git co master -- db/schema.rb
  git co master -- db/structure.sql
  ber db:setup
  ber db:migrate
}

function b2d() {
  $(boot2docker shellinit)
}

function loop() {
  while true; do
    $@
    echo "Press [ENTER] to run again..."
    read DUMMY
  done
}

function wtc() {
  curl -s whatthecommit.com |egrep '^<p>' |sed 's/^<p>\(.*\)/\1/g'
}
