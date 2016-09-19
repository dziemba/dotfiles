#!/bin/bash -e

# Brew
if [ ! -f /usr/local/bin/brew ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

set -x

brew update
brew doctor || sleep 10
brew upgrade --all

brew tap homebrew/x11
brew tap homebrew/science
brew tap homebrew/versions

# required for some brew packages
brew cask install xquartz
brew cask install tuntap
brew cask install java
brew cask install aquaterm

brew install bash
brew install coreutils
brew install findutils
brew install bash-completion
brew install git
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
brew install redis
brew install direnv
brew install dnsmasq
brew install the_silver_searcher
brew install awscli
brew install mysql
brew install hiredis
brew install jq
brew install scala
brew install sbt
brew install elixir
brew install s3cmd
brew install wrk
brew install phantomjs
brew install llvm
brew install heroku
brew install ansible
brew install markdown
brew install valgrind
brew install exiftool
brew install protobuf
brew install tidy-html5
brew install gawk
brew install graphviz
brew install glide
brew install apache-spark
brew install binutils
brew install aria2
brew install upx
brew install tree

brew install qrupdate --build-from-source
brew install gnuplot --with-aquaterm
brew install octave --without-gui

# Qt
brew uninstall qt qt5 --force
brew install qt55
brew link qt55 --force

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
brew cask install transmission
brew cask install keka
brew cask install torbrowser
brew cask install beatport-pro
brew cask install rekordbox
brew cask install skype
brew cask install google-drive
brew cask install gimp
brew cask install firefox
brew cask install pgadmin3
brew cask install wireshark
brew cask install audacity
brew cask install gpgtools
brew cask install inkscape
brew cask install psequel
brew cask install ipvanish-vpn
brew cask install atom
brew cask install keepingyouawake
brew cask install flux
brew cask install slack
brew cask install docker
brew cask install vagrant
[ -d ~/anaconda3 ] || brew cask install anaconda

# Brew fonts
brew tap caskroom/fonts
brew cask install font-sauce-code-powerline

brew cask cleanup

# Node Packages
npm install -g npm
npm install -g bower
npm install -g npm-check-updates
npm install -g standard
npm install -g standard-format
npm install -g babel-eslint

# Ruby
rbenv install -s $(cat ruby-version)
rbenv global $(cat ruby-version)
eval "$(rbenv init -)"
gem update --system

# Ruby Packages (with executables only, use bundler otherwise!)
gem install bundler
gem install rails
gem install rake
gem install lunchy
gem install rubocop
gem install pry
gem install git-up
gem install benchmark-ips

gem update

# Go packages
(
export GOPATH="$HOME/.gotools"
mkdir -p $GOPATH
go get -u github.com/alecthomas/gometalinter
$GOPATH/bin/gometalinter -i
)

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
