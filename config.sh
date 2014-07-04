#!/bin/bash -e

defaults write org.m0k.transmission SpeedLimitUploadLimit 0
defaults write org.m0k.transmission UploadLimit 0
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false

