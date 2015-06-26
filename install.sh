#!/bin/bash -e

# sudo keepalive
sudo -v
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# fix permissions if broken
if [ -d /usr/local ]; then
  sudo chown $USER /usr/local
fi

cd $HOME/.dotfiles

if [ ! -e .hostname_lock ]; then
  echo -n "Enter hostname: "
  read HOSTNAME
  sudo scutil --set HostName $HOSTNAME
  echo
  touch .hostname_lock
fi

./link.sh
./packages.sh
./ssl.sh
./config.sh
./vim.sh
./iterm.sh import
