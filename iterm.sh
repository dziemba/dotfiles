#!/bin/bash -e

FONT="SauceCodePowerline-Regular 14"
FONT_NONASCII="SauceCodePowerline-Regular 13"

if [ "$TERM_PROGRAM" == "iTerm.app" ]; then
  echo "Run iterm.sh in Terminal.app, not iTerm!"
  exit 0
fi

# start iterm to get default settings set
$HOME/Applications/iTerm.app/Contents/MacOS/iTerm &
PID=$!
sleep 1
kill -9 $PID
sleep 1

plist="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
buddy=/usr/libexec/PlistBuddy

IFS=$'\n'
for key in `cat solarized.itermcolors |grep key |cut -d'>' -f2 |cut -d'<' -f1`; do
  $buddy -c "Delete :'New Bookmarks':0:'$key'" $plist 2>/dev/null || true
done

$buddy -c "Set 'New Bookmarks':0:'Terminal Type' 'xterm-256color'" $plist

$buddy -c "Set 'New Bookmarks':0:'Non Ascii Font' '$FONT_NONASCII'" $plist
$buddy -c "Set 'New Bookmarks':0:'Normal Font' '$FONT'" $plist

$buddy -c "Set 'New Bookmarks':0:'Use Bold Font' '0'" $plist
$buddy -c "Set 'New Bookmarks':0:'Horizontal Spacing' '0.9'" $plist
$buddy -c "Set 'New Bookmarks':0:'Vertical Spacing' '0.9'" $plist

$buddy -c "Merge 'solarized.itermcolors' :'New Bookmarks':0" $plist

defaults read com.googlecode.iterm2 >/dev/null

defaults write com.googlecode.iterm2 DimInactiveSplitPanes 0
defaults write com.googlecode.iterm2 ShowFullScreenTabBar 1

