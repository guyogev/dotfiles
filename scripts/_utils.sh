#!/bin/bash

function backup() {
  if test -f "$1"; then
    echo "backup $1 into $2"
    cp "$1" "$2"
  fi
}

function symlink() {
  echo "$1" "$2"
  ln -sf "$1" "$2"
}
