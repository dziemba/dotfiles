#!/bin/bash -xe

# Brew
brew update
brew upgrade

brew install caskroom/cask/brew-cask

# required for some brew packages
brew cask install xquartz

brew install bash
brew install coreutils
brew install findutils
brew install bash-completion
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
brew install postgresql
brew install qt
brew install redis
brew install direnv
brew install the_silver_searcher

brew doctor
brew cleanup

# Brew Cask
brew cask install google-chrome
brew cask install iterm2
brew cask install virtualbox
brew cask install spotify
brew cask install dropbox
brew cask install keepassx
brew cask install libreoffice
brew cask install vlc
brew cask install vagrant
brew cask install transmission
brew cask install keka
brew cask install torbrowser
brew cask install github
brew cask install pdftk
brew cask install beatport-pro
brew cask install rekordbox
brew cask install skype
brew cask install google-drive
brew cask install gimp
brew cask install firefox
brew cask install seil
brew cask install flash-player

# Brew fonts
brew tap caskroom/fonts
brew cask install font-sauce-code-powerline

brew cask cleanup

# Node Packages
npm install -g uglify-js
npm install -g less
npm install -g jshint

npm update -g

# Ruby Packages (with executables only, use bundler otherwise!)
yes |gem install bundler
yes |gem install rails
yes |gem install rake
yes |gem install thor
yes |gem install rerun
yes |gem install lunchy
yes |gem install rubocop
yes |gem install pry

yes |gem update

# Postinstall
lunchy install /usr/local/opt/postgresql/*.plist
lunchy install /usr/local/opt/redis/*.plist
lunchy start postgres
lunchy start redis

grep /usr/local/bin/bash /etc/shells || echo /usr/local/bin/bash |sudo tee -a /etc/shells
sudo dscl . -change /Users/$USER UserShell /bin/bash /usr/local/bin/bash 2>/dev/null

