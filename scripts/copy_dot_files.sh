#!/bin/bash
###################################################
# Creates symlinks for configs into given folder.
#
# Usage:
#  ./copy_dot_files.sh <path>
# Example:
#  ./copy_dot_files.sh ~
###################################################

[ -z "$1" ] && echo "Error: No traget folder provided!" && exit

TARGET_DIR=$1
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASE_DIR}/.gitconfig $TARGET_DIR
ln -s ${BASE_DIR}/.tool-versions $TARGET_DIR
ln -s ${BASE_DIR}/.aliases $TARGET_DIR
