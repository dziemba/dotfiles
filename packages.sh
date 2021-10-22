#!/bin/bash -e

if [[ ! "$(xcode-select -p)" =~ ^/ ]]; then
  xcode-select --install
  exit 1
fi

if [ ! -f /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

set -x

brew update
brew bundle install --no-lock
brew bundle cleanup --zap --force
brew upgrade
brew upgrade --cask
brew cleanup

brew doctor || sleep 10

# htop
HTOP="$(greadlink -f /usr/local/bin/htop)"
if [ "$(stat -f '%u %p' "$HTOP")" != "0 106755" ]; then
  sudo chown root "$HTOP"
  sudo chmod 106755 "$HTOP"
fi

# openjdk
if [ ! -e /Library/Java/JavaVirtualMachines/openjdk-17.jdk ]; then
  sudo ln -sfn "$(brew --prefix)/opt/openjdk@17/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk-17.jdk
fi
if [ ! -e /Library/Java/JavaVirtualMachines/openjdk-8.jdk ]; then
  sudo ln -sfn "$(brew --prefix)/opt/openjdk@8/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk-8.jdk
fi
