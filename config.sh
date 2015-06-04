#!/bin/bash -xe

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
chflags nohidden ~/Library

# Transmission
defaults write org.m0k.transmission SpeedLimitUploadLimit 0
defaults write org.m0k.transmission UploadLimit 0
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false

# Kernel limits
sudo sysctl -w kern.ipc.somaxconn=2048
sudo sysctl -w kern.maxfiles=12288
sudo sysctl -w kern.maxfilesperproc=10240
