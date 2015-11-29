#!/bin/sh

# Setup brew if it is not installed
which brew | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Brew my stuff
apps=( git cmake python \
	caskroom/cask/brew-cask )
for i in "${apps[@]}"
do
	which $i | brew install $i 
done

# Get cask on tap
brew tap caskroom/versions;

# Get bres from casks
apps=( spotify google-chrome \
1password dropbox skype spectacle )
for i in "${apps[@]}"
do
	which $i | brew cask install $i 
done



