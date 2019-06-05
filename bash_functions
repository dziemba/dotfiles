alias l="ls -alh"
alias psg="ps aux |grep"
alias ag="rg -S"

alias be="bundle exec"

alias dev="cd $HOME/dev"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan\$(date +%s).jpg"
alias elsterformular="wine 'c:/Program Files/ElsterFormular/bin/pica.exe'"

function loadkeys() {
  for K in ~/dev/keys/*; do source $K; done
}

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

function docker-killall() {
  docker ps --format {{.ID}} |xargs -n1 docker kill
}

function hardwax-tabs() {
  for ID in $(pbpaste |grep -oE '[0-9]{5}' |sort |uniq); do
    open "https://hardwax.com/$ID/"
    sleep 1
  done
}
