#!/bin/bash
###################################################
# Install basic system requirements for a new Mac
#
# Usage:
#  ./install.sh
###################################################

# System updates.
# sudo softwareupdate -i -a

# Command line tools
# xcode-select --install


# Brew - https://docs.brew.sh/Installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# oh-my-zsh
brew install zsh
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# asdf - https://asdf-vm.com/#/core-manage-asdf?id=install
brew install coreutils curl git
brew install asdf
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'


# Install default lanuages versions
asdf install
