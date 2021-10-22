alias l="ls -alh"
alias psg="ps aux |grep"
alias ag="rg -S"

alias be="bundle exec"

alias dev="cd $HOME/dev"

alias makepr="hub pull-request --no-edit"

alias scan="scanimage --mode Color --resolution 300 |convert - Scan\$(date +%s).jpg"

function jversion() {
  export JAVA_HOME="$(/usr/libexec/java_home -v "$1")"
  java -version
}

function loadkeys() {
  for K in ~/dev/keys/*; do source $K; done
}

function idea {
  open -a "$(ls -dt /Applications/IntelliJ\ IDEA*|head -1)" .
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

function decksde-tabs() {
  for ID in $(pbpaste |grep -oE '\[[0-9a-z]{3}-[0-9a-z]{2}\]' |tr -d [] |sort |uniq); do
    open "https://www.decks.de/decks/workfloor/lists/findTrack.php?code=$ID"
    sleep 10 # wait for page to load, the redirect is stateful :/
  done
}
