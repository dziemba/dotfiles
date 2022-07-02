#!/bin/bash -e

# for bootstrapping
export PATH="/opt/homebrew/bin:$PATH"

cd "$HOME/.dotfiles"

if [ ! -e .hostname_lock ]; then
  echo -n "Enter hostname: "
  read -r HOSTNAME
  sudo scutil --set HostName "$HOSTNAME"
  echo
  touch .hostname_lock
fi

./link.sh
./packages.sh
./config.sh
./vim.sh
./iterm.sh import
