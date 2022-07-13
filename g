#!/bin/zsh

# Description
# git commands

# Usage
# g -[option]

x="acps"   # options

color="$(tput setaf 226)"


show_options() {
   echo "$color
 open one of several cheatsheets or tools.

 options are:
     -a : git add .
     -c : git commit -m <msg>
     -p : git push <args>
     -s : git status
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
        p) git push $@;;
        s) git status ;;
        *) show_options ;;
    esac
done


exit 0
