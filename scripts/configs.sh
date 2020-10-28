#!/bin/bash
###################################################
# Symlinks files from configs/ thier appropriate location on the file system.
# If file already exist, back it up to <timestamp>/<file>
#
# Usage:
#  ./scripts/configs.sh
###################################################
set -e

. ./scripts/_utils.sh

# Iterm2 profiles
src_file="$(pwd)/configs/iterm2-profiles.json"
target_file=~/Library/Application\ Support/iTerm2/DynamicProfiles/iterm2-profiles.json

symlink $src_file "$target_file"
