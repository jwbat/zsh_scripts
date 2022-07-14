#!/bin/zsh

# Description
# git commands

# Usage
# g -[option]

color="$(tput setaf 226)"

x="ac:psP"   # options

show_options() {
   echo "$color
 open one of several cheatsheets or tools.

 options are:
     -a : git add .
     -c : git commit -m <msg>
     -p : git push <args>
     -s : git status
     -P : git add . && git commit -m '.' && git push
"
}

if [ $# -eq 0 ]; then
    show_options
    exit 0
fi

while getopts $x opt; do
    case $opt in
        a) $(git add --all *) ;;
        c) $(git commit -m $1) ;;
        p) $(git push) ;;
        s) $(git status) ;;
        P) $(git add --all && git commit -m '.' && git push);;
        *) show_options ;;
    esac
done


exit 0
