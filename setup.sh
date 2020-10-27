
#!/bin/bash
###################################################
# Creates symlinks for configs into given <folder>.
# If file already exist, back it up to <folder>/BACKUP_FOLDER
#
# Usage:
#  ./setup <DOTFILES_TARGET_FOLDER>
# Example:
#  ./setup ~
###################################################

DOTFILES_TARGET_FOLDER=${1:-/tmp/dotfiles}

# copy configurations:
./scripts/symlink_dotfiles.sh $DOTFILES_TARGET_FOLDER

./scripts/install.sh
./scripts/brew.sh
./scripts/node.sh
