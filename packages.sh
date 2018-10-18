#!/bin/bash -e

# Brew
if [ ! -f /usr/local/bin/brew ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

set -x

brew update
brew doctor || sleep 10
brew upgrade

brew tap caskroom/versions
brew tap caskroom/fonts
brew tap AdoptOpenJDK/openjdk

# required for some brew packages
brew cask install \
  xquartz \
  tuntap

brew install \
  adoptopenjdk-openjdk8 \
  bash \
  coreutils \
  findutils \
  bash-completion \
  git \
  gist \
  hub \
  gnu-sed \
  go \
  dep \
  htop \
  imagemagick \
  lame \
  mercurial \
  nmap \
  node \
  openssl \
  openvpn \
  pngcrush \
  rdesktop \
  rename \
  ruby \
  sane-backends \
  unrar \
  vim \
  watch \
  wget \
  wine \
  postgresql \
  redis \
  direnv \
  awscli \
  mysql \
  hiredis \
  jq \
  scala \
  sbt \
  elixir \
  s3cmd \
  wrk \
  phantomjs \
  llvm \
  ansible \
  markdown \
  exiftool \
  protobuf \
  tidy-html5 \
  gawk \
  graphviz \
  apache-spark \
  binutils \
  aria2 \
  upx \
  tree \
  maven \
  yarn \
  vault \
  docker \
  docker-machine \
  docker-machine-nfs \
  docker-compose \
  pwgen \
  kafka \
  ripgrep \
  pdsh \
  moreutils

# Brew Fixes
brew install openssl
brew link openssl --force

# Brew Cask
brew cask install \
  google-chrome \
  iterm2 \
  virtualbox \
  dropbox \
  libreoffice \
  vlc \
  transmission \
  keka \
  tor-browser \
  rekordbox \
  skype \
  gimp \
  firefox \
  wireshark \
  gpg-suite \
  inkscape \
  psequel \
  keepingyouawake \
  slack \
  vagrant \
  intellij-idea-ce \
  spectacle \
  kid3 \
  sequel-pro \
  font-source-code-pro-for-powerline

# Brew cleanup
brew prune
brew cleanup
brew doctor || sleep 10

# Postinstall
brew services start docker-machine

sudo chown root /usr/local/bin/htop
sudo chmod +s /usr/local/bin/htop
