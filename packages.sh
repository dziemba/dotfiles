#/bin/bash -e

# Brew
brew update

brew install coreutils
brew install findutils
brew install git
brew install hub
brew install gist
brew install gnu-sed
brew install go
brew install htop-osx
brew install imagemagick
brew install lame
brew install mercurial
brew install nmap
brew install node
brew install openssl
brew install openvpn
brew install pngcrush
brew install rbenv
brew install rdesktop
brew install rename
brew install ruby
brew install ruby-build
brew install sane-backends
brew install unrar
brew install vim
brew install watch
brew install wget
brew install wine

brew upgrade
brew doctor
brew cleanup

# Brew Cask
brew tap caskroom/cask
brew install brew-cask

brew cask install google-chrome
brew cask install iterm2
brew cask install atom
brew cask install virtualbox
brew cask install spotify
brew cask install dropbox
brew cask install keepassx
brew cask install libreoffice
brew cask install vlc
brew cask install mactex
brew cask install vagrant
brew cask install transmission
brew cask install keka
brew cask install torbrowser
brew cask install github

brew cask cleanup

# Atom Packages
apm install go-plus

# Node Packages
npm install -g uglify-js
npm install -g less

# Ruby Packages (with executables only, use bundler otherwise!)
gem install bundler
gem install rails
gem install rake
gem install thor
gem install rerun

gem update

