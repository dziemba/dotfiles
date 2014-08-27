#!/bin/bash -e

# sudo keepalive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# fix permissions if broken
if [ -d /usr/local ]; then
  sudo chown $USER /usr/local
fi

cd $HOME/.dotfiles

./link.sh
./packages.sh
./config.sh
./vim.sh

# run twice to ensure it really works...
./iterm.sh
./iterm.sh

