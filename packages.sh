#!/bin/bash -e

if [ "$(xcode-select -p)" != "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install
  exit 1
fi

if [ ! -f /usr/local/bin/brew ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

set -x

brew update
brew bundle install --no-lock
brew bundle cleanup --zap --force
brew upgrade
brew upgrade --cask
brew cleanup

brew doctor || sleep 10

HTOP="$(greadlink -f /usr/local/bin/htop)"
if [ "$(stat -f '%u %p' "$HTOP")" != "0 106755" ]; then
  sudo chown root "$HTOP"
  sudo chmod 106755 "$HTOP"
fi
