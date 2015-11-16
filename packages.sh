#!/bin/bash -xe

# Brew
brew update
brew doctor || sleep 10
brew upgrade --all

brew install caskroom/cask/brew-cask

# required for some brew packages
brew cask install xquartz
brew cask install tuntap

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
brew install redis
brew install direnv
brew install dnsmasq
brew install the_silver_searcher
brew install awscli
brew install mysql
brew install hiredis
brew install gcc
brew install docker
brew install docker-machine
brew install docker-compose
brew install jq
brew install scala
brew install sbt
brew install elixir
brew install s3cmd
brew install wrk
# TODO: re-add when package is fixed
#brew install phantomjs
brew install llvm
brew install heroku
brew install ansible
brew install markdown
brew install valgrind
brew install exiftool

# Qt
brew uninstall qt --force
brew install qt5
brew link qt5 --force

# Brew Fixes
brew install openssl
brew link openssl --force

brew prune
brew cask cleanup
brew cleanup
brew doctor || sleep 10

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
brew cask install gpgtools
brew cask install inkscape
brew cask install psequel
brew cask install ipvanish-vpn
brew cask install atom
brew cask install keepingyouawake
brew cask install flux

# Brew fonts
brew tap caskroom/fonts
brew cask install font-sauce-code-powerline

brew cask cleanup

# Node Packages
npm install -g npm
npm install -g bower
npm install -g npm-check-updates
npm install -g standard

# Ruby
rbenv install -s $(cat ruby-version)
rbenv global $(cat ruby-version)
gem update --system

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
gem install benchmark-ips

gem update

# Postinstall
lunchy install /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist
lunchy install /usr/local/opt/redis/homebrew.mxcl.redis.plist
lunchy start postgres
lunchy start redis

sudo cp /usr/local/opt/dnsmasq/*.plist /Library/LaunchDaemons
sudo lunchy start dnsmasq
sudo mkdir -p /etc/resolver
echo "nameserver 127.0.0.1" |sudo tee /etc/resolver/dev > /dev/null

sudo chown root /usr/local/bin/htop
sudo chmod +s /usr/local/bin/htop
