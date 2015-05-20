#!/bin/bash -xe

# Brew
brew update
brew upgrade --all

brew tap homebrew/science
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
brew install rbenv-gem-rehash
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
brew install dnsmasq
brew install the_silver_searcher
brew install awscli
brew install mysql
brew install hiredis
brew install gcc
brew install protobuf
brew install boot2docker
brew install jq
brew install scala
brew install sbt
brew install cowsay
brew install r
brew install elixir
brew install s3cmd
brew install wrk
brew install phantomjs
brew install llvm

brew prune
brew cask cleanup
brew cleanup
brew doctor

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
brew cask install pdftk
brew cask install beatport-pro
brew cask install rekordbox
brew cask install skype
brew cask install google-drive
brew cask install gimp
brew cask install firefox
brew cask install flash-player
brew cask install hipchat
brew cask install pgadmin3
brew cask install wireshark
brew cask install audacity
brew cask install java
brew cask install rstudio
brew cask install gpgtools
brew cask install inkscape
brew cask install psequel
brew cask install ipvanish-vpn

# Brew fonts
brew tap caskroom/fonts
brew cask install font-sauce-code-powerline

brew cask cleanup

# Node Packages
npm install -g npm
npm install -g uglify-js
npm install -g less
npm install -g jshint
npm install -g bower
npm install -g npm-check-updates

npm install -g cordova
npm install -g ionic
npm install -g generator-ionic
npm install -g ios-sim
npm install -g ios-deploy

# Ruby
rbenv install -s $(cat ruby-version)
rbenv global $(cat ruby-version)

# Ruby Packages (with executables only, use bundler otherwise!)
gem install bundler
gem install rails
gem install rake
gem install thor
gem install rerun
gem install lunchy
gem install rubocop
gem install pry
gem install git-up

gem update

# Postinstall
lunchy install /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist
lunchy install /usr/local/opt/redis/homebrew.mxcl.redis.plist
lunchy start postgres
lunchy start redis

grep /usr/local/bin/bash /etc/shells || echo /usr/local/bin/bash |sudo tee -a /etc/shells
sudo dscl . -change /Users/$USER UserShell /bin/bash /usr/local/bin/bash 2>/dev/null || true

sudo cp /usr/local/opt/dnsmasq/*.plist /Library/LaunchDaemons
sudo lunchy start dnsmasq
sudo mkdir -p /etc/resolver
echo "nameserver 127.0.0.1" |sudo tee /etc/resolver/dev > /dev/null

sudo chown root /usr/local/bin/htop
sudo chmod +s /usr/local/bin/htop
