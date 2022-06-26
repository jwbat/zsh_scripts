#!/bin/zsh

# Description
# open a cheatsheet 

# Usage
# t -[option]

x="abcvgmnps"  # options
#x="dbv"  # options
color="$(tput setaf 226)"
#path="~/code/shell/scripts/stuff"
open="/usr/bin/open"

show_options() {
   echo "$color
 conveniently open one of several cheatsheets.

 options are -[ $x ]:
     devhints.io,
     bash,
     cockroachdb,
     vimscript,
     git,
     matplotlib,
     numpy,
     pandas,
     sql
     "
}

if [ $# -eq 0 ]; then
    show_options
    exit 0
fi

# Transform long options to short ones
for arg in "$@"; do
  shift
  case "$arg" in
    '--bash')   set -- "$@" '-b'   ;;
    '--vim')    set -- "$@" '-v'   ;;
    '--sql')    set -- "$@" '-s'   ;;
    '--all')    set -- "$@" '-a'   ;;
    '--git')    set -- "$@" '-g'   ;;
    '--mat')    set -- "$@" '-m'   ;;
    '--pan')    set -- "$@" '-p'   ;;
    *)          set -- "$@" "$arg" ;;
  esac
done


while getopts $x opt; do
    case $opt in
        a) $open 'https://devhints.io';; # all
        b) $open 'https://devhints.io/bash';;
        v) $open 'https://devhints.io/vimscript';;
        c) $open ~/code/shell/scripts/stuff/cockroachdb_pdfs/*;;
        g) $open ~/code/shell/scripts/stuff/cheatsheets/git.pdf;;
        m) $open ~/code/shell/scripts/stuff/cheatsheets/matplotlib.pdf;;
        n) $open ~/code/shell/scripts/stuff/cheatsheets/numpy.pdf;;
        p) $open ~/code/shell/scripts/stuff/cheatsheets/pandas.pdf;;
        s) $open ~/code/shell/scripts/stuff/cheatsheets/sql.pdf;;
        *) show_options;;
    esac
done


exit 0
