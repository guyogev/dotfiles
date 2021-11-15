#!/bin/bash
###################################################
# Installs brew formulaes & casks.
#
# Usage:
#  ./brew.sh
###################################################

brew cask install iterm2
brew install zsh-syntax-highlighting
brew install gnupg
brew install coreutils
brew install gpg

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install microsoft-edge

# Security tools
brew install git-secrets
brew cask install bitwarden

# Dev tools
brew cask install visual-studio-code
brew install gh
brew cask install postman
brew install git-secret
brew install watchman

brew cask install kindle
brew cask install openoffice

# DB
brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community
