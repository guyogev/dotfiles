#!/bin/bash
###################################################
# Symlinks files from dotfiles/ into given <folder>.
# If file already exist, back it up to <folder>/<timestamp>/dotfiles-backup
#
# Usage:
#  ./scripts/dotfiles.sh <path>
# Example:
#  ./scripts/dotfiles.sh ~
###################################################
set -e

. ./scripts/_utils.sh

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
