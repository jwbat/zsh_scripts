#!/bin/zsh

# Author: James Batman
# Date Created: 06/10/22
# Last Modified: 06/10/22

# Description
# run cockroachDB commands 
#  n.b.: start server before entering the sql shell

# Usage
# cr [ -sqcktmrlp ] 

x="sqcktmrlp"

if [ $# -eq 0 ]; then
    echo "available options are: $x"
fi

while getopts $x opt; do # "sqcktmrlp" 
    case $opt in
        # start local server with single node & defaults
        s) cockroach start-single-node --insecure --listen-addr localhost;;     

        # enter sql shell
        q) cockroach sql --insecure;;                                           

        # show some of the most used commands
        c) cr_cmnds;;

        # stop cluster
        k) pkill -9 cockroach;;

        # show tsx commands (& more) 
        t) cr_tsx;;

        # show multi-node cluster commands
        m) cr_mnc;;

        # show running
        r)
            if [[ $(ps -ax | grep cockroach | wc -l) -ge 2 ]]; then
                echo "true"
            else
                echo "false"
            fi
            ;;

        # start 3-node cluster
        l) cr_cluster;;

        # pw
        p) cat $HOME/code/ghpat/crdb.txt;;

        *) echo "available options are: [ $x ]";;
    esac
done

exit 0
