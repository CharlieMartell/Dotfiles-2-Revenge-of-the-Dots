#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx-settings` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ "$(uname)" == "Darwin" ]; then
    echo "Installing system configuration for OSX"

    echo "Installing command line tools"
    # Hack to check if gcc is installed, if not installed cli tools
    which gcc | /bin/sh ./command-line-tools.sh

    echo "Installing Applications from Homebrew"
    /bin/sh ./brews.sh

    echo "Setting OSX Defaults"
    /bin/sh ./osx-settings.sh
fi

# TODO: Handle ZSH/VIM etc

