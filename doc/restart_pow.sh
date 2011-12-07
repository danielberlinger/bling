#!/bin/sh

echo "*** Starting the Pow server..."
launchctl unload "$HOME/Library/LaunchAgents/cx.pow.powd.plist" 2>/dev/null || true
launchctl load -Fw "$HOME/Library/LaunchAgents/cx.pow.powd.plist" 2>/dev/null
echo "*** Pow Should be running now..."