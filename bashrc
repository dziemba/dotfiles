export PS1='\u@\h:\w$(__git_ps1 " (%s) ")\$ '
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin
unset HISTFILE

shopt -s autocd
shopt -s globstar

[ -e /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"

export GOPATH="$HOME/dev/Go"
export ATOM_PATH="$HOME/Applications"
export NODE_PATH="/usr/local/lib/node_modules"

alias l="ls -alh"
alias be="bundle exec"
alias betest="RAILS_ENV=test bundle exec"
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

function git-master()
{
  if ! git st |grep "Your branch is up-to-date with 'origin/master'." >/dev/null; then
    echo  "Not on master"
    return 1
  fi

  if ! git st |grep "nothing to commit, working directory clean" >/dev/null; then
    echo "Dir not clean"
    return 1
  fi

  git fetch --all
  git co master
  git merge origin/master
}

function git-clean-branches
{
  git co master
  git fetch --all
  git branch --merged master |grep -v master$ |xargs git branch -d
  git branch -r --merged master |grep -v master$ |xargs git branch -rd
  git gc
  git branch -a
}

function rbenv-setup()
{
  git-master || return 1

  rbenv install -s
  rbenv local
  gem install bundler
  rbenv rehash
  bundle
}

function rails-mrproper()
{
  rbenv-setup || return 1

  if [ ! -e .envrc ]; then
    echo "No .envrc found!"
    return 1
  fi

  if direnv status |grep 'Found RC allowed false' >/dev/null; then
    echo "Direnv not allowed!"
    return 1
  fi

  if [ ! -e config/database.yml ]; then
    echo "No database.yml found!"
    return 1
  fi

  be rake db:drop db:setup
  betest rake db:drop db:setup
  bespec
}

