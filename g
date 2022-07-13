#!/bin/zsh

# Description
# git commands

# Usage
# g -[option]

x="acp"   # options

color="$(tput setaf 226)"


show_options() {
   echo "$color
 open one of several cheatsheets or tools.

 options are:
     -a : git add .
     -c : git commit -m "$1"
     -p : git push
"
}

if [ $# -eq 0 ]; then
    show_options
    exit 0
fi

while getopts $x opt; do
    case $opt in
        a) git add . ;;
        c) git commit -m "$1" ;;
        p) git push ;;
        *) show_options ;;
    esac
done


exit 0
