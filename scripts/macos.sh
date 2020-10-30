#!/bin/bash
###################################################
# Sets macOS system defaults
###################################################

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en-IL" "he-IL"
