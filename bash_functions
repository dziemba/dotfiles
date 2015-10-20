alias l="ls -alh"
alias be="bundle exec"
alias betest="RAILS_ENV=test bundle exec"
alias ber="bundle exec rake"
alias beguard="bundle exec guard -c"
alias bespec="bundle exec rspec"
alias sspec="spring rspec"

alias dropbox="cd $HOME/Dropbox"
alias dev="cd $HOME/dev"
alias godev="cd $GOPATH/src/github.com/dziemba"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan\$(date +%s).jpg"
alias rubocop-diff-master="rubocop -R --force-exclusion \
  \$(ls \$(git diff --name-only master HEAD |grep \\\\.rb\$ |grep -v ^db/))"

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
  betest rake db:drop db:setup
}

function b2d() {
  eval $(docker-machine env dev)
}

function loop() {
  while true; do
    $@
    echo "Press [ENTER] to run again..."
    read DUMMY
  done
}

function wtc() {
  curl whatthecommit.com/index.txt
}

function dot-update() {
  pushd ~/.dotfiles
  git up
  ./install.sh
  popd
}
