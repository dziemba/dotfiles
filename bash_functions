alias l="ls -alh"
alias psg="ps aux |grep"

alias be="bundle exec"
alias betest="RAILS_ENV=test bundle exec"
alias ber="bundle exec rake"
alias beguard="bundle exec guard -c"
alias bespec="bundle exec rspec"
alias sspec="spring rspec"

alias nr="npm run"

alias dropbox="cd $HOME/Dropbox"
alias dev="cd $HOME/dev"
alias godev="cd $GOPATH/src/github.com"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan\$(date +%s).jpg"
alias elsterformular="wine 'c:/Program Files/ElsterFormular/bin/pica.exe'"

function psk() {
  P=$(ps ux |grep $1 |grep -v " grep")
  echo "$P"
  [ "$P" == "" ] && return

  echo -en "\nEnter Y to kill all those processes: "
  read OK
  if [ "$OK" == "Y" ]; then
    for PID in $(echo "$P" |cut -d' ' -f2); do
      echo "kill $PID"
      kill $PID
    done
  fi
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

function devtmp() {
  cd $HOME/dev
  rm -rf tmp
  mkdir tmp
  cd tmp
}

function docker-machine-create() {
  docker-machine rm -f default || true
  docker-machine create default \
    -d virtualbox \
    --virtualbox-memory 2048 \
    --virtualbox-cpu-count 2 \
    --virtualbox-boot2docker-url \
      https://github.com/boot2docker/boot2docker/releases/download/v17.03.1-ce/boot2docker.iso
  docker-machine-nfs default
}
