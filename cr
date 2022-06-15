#!/bin/zsh

# Author: James Batman
# Date Created: 06/10/22
# Last Modified: 06/10/22

# Description
# run cockroachDB commands or print info
#  n.b.: start server before entering the sql shell

# Usage
# cr [ -cshqktmrlinCXMPLRTE ]  
# UPPER CASE print info, lower case do something such as start a node
# use cr -h for cockroach help

x="c:shqktmrlinCXMPLRTE" 

color() { tput setaf 86 } # blue

if [ $# -eq 0 ]; then
    echo "available options are: $x"
fi

while getopts $x opt; do
    case $opt in

        # use "-c 1" to connect to the 'hollow-gerbil' cluster in us-w, or
        # use "-c 2" to connect to the 'university-cluster' in eu-w
        c) 
        if [ $2 -eq 1 ]; then
            cockroach sql --url $gerbil
        elif [ $2 -eq 2 ]; then
            cockroach sql --url $uni
        else
            echo "-c takes 1 or 2 at this time"
        fi
        ;;

        # start local server with single node & defaults
        s) cockroach start-single-node --insecure --listen-addr localhost;;     

        # show whether server is running
        r)
            if [[ $(ps -ax | grep cockroach | wc -l) -ge 2 ]]; then
                echo "true"
            else
                echo "false"
            fi
            ;;

        # start 3-node cluster
        l) cr_cluster;;

        # initialize a cluster (not needed with a single-node cluster)
        i) cockroach init --insecure --host=localhost:26257;;

        #  List node IDs [, show their status, decommission nodes for removal, or recommission nodes.]
        n) cockroach node ls --insecure;;

        h) color; cockroach help;;

        # enter sql shell
        q) cockroach sql --insecure;;                                           

        # stop cluster
        k) pkill -9 cockroach;;

        # pw
        P) cat $HOME/code/ghpat/crdb.txt;;
        # show some of the most used commands
        C) cr_cmnds;;
        # show tsx commands (& more) 
        X) cr_tsx;;
        # show multi-node cluster commands
        M) cr_mnc;;
        # show commands with locality flags
        L) cr_locality;;
        # show commands with locality flags
        R) cr_multiregion;;
        # show additional topics
        T) cr_topics;;
        # show evaluation criteria
        E) v-eval;;


        *) echo "available options are: [ $x ]";;
    esac
done

exit 0
