#!/bin/bash

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES; 
# remove icons in Dock
defaults write com.apple.dock persistent-apps -array; 
# smaller icon sizes in Dock
defaults write com.apple.dock tilesize -int 36; 
# turn Dock auto-hidng on
defaults write com.apple.dock autohide -bool true; 
# remove Dock show delay
defaults write com.apple.dock autohide-delay -float 0; 
# remove Dock show delay
defaults write com.apple.dock autohide-time-modifier -float 0; 
# show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true; 

# Reset Finder 
killall Dock 2>/dev/null;
killall Finder 2>/dev/null;
