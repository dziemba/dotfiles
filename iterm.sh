#!/bin/bash -e

if [ "$TERM_PROGRAM" == "iTerm.app" ]; then
  echo "Run iterm.sh in Terminal.app, not iTerm! And close iTerm before calling this!"
  exit 0
fi

plist="$HOME/Library/Preferences/com.googlecode.iterm2.plist"

case $1 in
  export)
    plutil -convert xml1 $plist
    cp $plist iterm2.plist
    ;;
  import)
    cp iterm2.plist $plist
    plutil -convert binary1 $plist
    ;;
  *)
    echo "Usage: $0 (import|export)"
esac

defaults read com.googlecode.iterm2 > /dev/null
