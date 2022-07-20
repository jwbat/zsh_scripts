#!/bin/zsh

if [ $# -eq 0 ]; then
    tput setaf 159
    exit 0
fi

tput setaf $1

exit 0
