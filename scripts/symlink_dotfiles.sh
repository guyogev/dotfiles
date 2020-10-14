#!/bin/bash
###################################################
# Creates symlinks for configs into given <folder>.
# If file already exist, back it up to <folder>/BACKUP_FOLDER
#
# Usage:
#  ./scripts/copy_dot_files.sh <path>
# Example:
#  ./scripts/copy_dot_files.sh ~
###################################################
set -e

function backup() {
  if test -f "$1"; then
    echo "backup $1 into $2"
    cp $1 $2

  fi
}

function symlink() {
  ln -sf $1 $2
}

[ -z "$1" ] && echo "Error: No traget folder provided!" && exit

TARGET_DIR=$1
BASE_DIR="$(pwd)/dotfiles"
BACKUP_FOLDER=$TARGET_DIR/dotfiles-backup/$(date +"%s")

mkdir -p $BACKUP_FOLDER

for f in "$BASE_DIR"/*
do
  if [ -f "$f" ];then
    file=$(basename $f)
    target_file="$TARGET_DIR/.$file"
    backup_file="$BACKUP_FOLDER/.$file"

    backup $target_file $backup_file
    symlink $f $target_file
  fi
done
