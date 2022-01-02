#!/bin/zsh

# Author: James Batman
# Date Created: 11/12/21
# Last Modified: 11/12/21

# Description
# Prints to the terminal the value of e with the provided
#  number of decimal places (default=50) up to 10000.

# Usage
# e [number of decimal places]

e=$(<~/code/shell/scripts/stuff/e.txt)

param=$1
nr_of_digits=${param:-50}

c="$(tput setaf 83)"
echo "$c ${e:0:$((2 + $nr_of_digits))}"

exit 0
