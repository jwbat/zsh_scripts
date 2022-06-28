#!/bin/zsh

for arg in "$@"; do
  echo "\t $1"
  shift
done

exit 0
