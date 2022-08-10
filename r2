#!/bin/zsh

# Description
# Rust Tools & aliases 

# Usage
# r2 

echo "
$red alias g=$yellow'cargo'
$red alias r=$yellow'v src/main.rs'                         $grey # open Rust main.rs in vim 
$red alias rt=$yellow'rustc ./src/main.rs && mv main m'     $grey # compile, place 'main' in proj dir as 'm' 
$red alias rb=$yellow'cargo build --release'                $grey # cargo build 
$red alias rst=$yellow'cd ~/code/rust'
"


exit 0
