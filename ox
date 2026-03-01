#!/bin/zsh

r=$red; g=$gold; y=$yellow; a=$aqua; pg=$palegreen; k=$khaki;
c=$cyan; x=$grey; s=$sea; gr=$green; p=$pink; h=$honeydew; rs=$rose;


cd $HOME/code/go/gox
clear;
echo "\n $y"

go doc constraintsx
echo "\n $r"

go doc slicex
echo "\n $c"

go doc funcx

echo "\n $r"

go doc mathx
echo "\n $g"

go doc randx
echo "\n $k"

go doc mapx
echo "\n $a"

go doc argx

exit 0
