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

# Setup Trackpad information
defaults write AppleMultitouchTrackpad ActuateDetents -int 1;
defaults write AppleMultitouchTrackpad Clicking -int 1;
defaults write AppleMultitouchTrackpad DragLock -int 0;
defaults write AppleMultitouchTrackpad Dragging -int 0;
defaults write AppleMultitouchTrackpad FirstClickThreshold -int 1;
defaults write AppleMultitouchTrackpad ForceSuppressed -int 0;
defaults write AppleMultitouchTrackpad SecondClickThreshold -int 1;
defaults write AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 1;
defaults write AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 0;
defaults write AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 0;
defaults write AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadHandResting -int 1;
defaults write AppleMultitouchTrackpad TrackpadHorizScroll -int 1;
defaults write AppleMultitouchTrackpad TrackpadMomemtumScroll -int 1;
defaults write AppleMultitouchTrackpad TrackpadPinch -int 1;
defaults write AppleMultitouchTrackpad TrackpadRightClick -int 1;
defaults write AppleMultitouchTrackpad TrackpadRotate -int 1;
defaults write AppleMultitouchTrackpad TrackpadScroll -int 1;
defaults write AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 0;
defaults write AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 2;
defaults write AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0;
defaults write AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0;
defaults write AppleMultitouchTrackpad UserPreferences -int 1;
defaults write AppleMultitouchTrackpad version -int 10;

# Reset Finder 
killall Dock 2> /dev/null;
killall Finder 2> /dev/null;
