#!/bin/bash -e

if [ "$(xcode-select -p)" != "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install
fi

if [ ! -f /usr/local/bin/brew ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

set -x

brew update
brew bundle install
brew upgrade

brew bundle cleanup --zap --force
brew cleanup
brew prune

brew doctor || sleep 10

sudo chown root /usr/local/bin/htop
sudo chmod +s /usr/local/bin/htop
