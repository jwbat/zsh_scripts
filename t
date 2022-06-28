#!/bin/zsh

# Description
# open a cheatsheet 

# Usage
# t -[option]

x="bcdgkmnpsv"  # options
#x="dbv"  # options
color="$(tput setaf 226)"
#path="~/code/shell/scripts/stuff"
open="/usr/bin/open"

show_options() {
   echo "$color
 conveniently open one of several cheatsheets or tools.

 options are:
     -b, --bash
     -c, --crdb
     -d, --dev
     -g, --git
     -k, --shellcheck
     -m, --matplotlib
     -n, --numpy
     -p, --pandas
     -s, --sql
     -v, --vim
"
}

if [ $# -eq 0 ]; then
    show_options
    exit 0
fi

for arg in "$@"; do
  shift
  case "$arg" in
           '--bash')    set -- "$@" '-b'   ;;
           '--crdb')    set -- "$@" '-c'   ;;
            '--dev')    set -- "$@" '-d'   ;;
            '--git')    set -- "$@" '-g'   ;;
     '--matplotlib')    set -- "$@" '-m'   ;;
          '--numpy')    set -- "$@" '-n'   ;;
         '--pandas')    set -- "$@" '-p'   ;;
            '--sql')    set -- "$@" '-s'   ;;
            '--vim')    set -- "$@" '-v'   ;;
     '--shellcheck')    set -- "$@" '-k'   ;;
                  *)    set -- "$@" "$arg" ;;
  esac
done


while getopts $x opt; do
    case $opt in
        a) $open 'https://devhints.io';; # all
        b) $open 'https://devhints.io/bash';;
        v) $open 'https://devhints.io/vimscript';;
        k) $open 'https://www.shellcheck.net';;
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
