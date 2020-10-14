# Brew - https://docs.brew.sh/Installation
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Zsh
# brew install zsh
# chsh -s /usr/local/bin/zsh

# asdf - https://asdf-vm.com/#/core-manage-asdf?id=install
brew install coreutils curl git
brew install asdf

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install microsoft-edge

# Security tools
brew install git-secrets
brew cask install bitwarden

# Dev tools
brew cask install visual-studio-code
