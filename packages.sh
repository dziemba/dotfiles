#!/bin/bash -e

if [[ ! "$(xcode-select -p)" =~ ^/ ]]; then
  xcode-select --install
  exit 1
fi

if ! which brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

set -x

brew update
brew bundle install
brew bundle cleanup --zap --force
brew upgrade
brew upgrade --cask
brew cleanup

brew doctor || sleep 10

# openjdk
if [ ! -e /Library/Java/JavaVirtualMachines/openjdk-17.jdk ]; then
  sudo ln -sfn "$(brew --prefix)/opt/openjdk@17/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk-17.jdk
fi
