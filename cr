#!/bin/zsh

# Description
# run cockroachDB commands or print info
#  n.b.: start server before entering the sql shell

# Usage
# cr [ -cshqktmrlinCXMPLRTE ]  
# UPPER CASE print info, lower case do something such as start a node
# use cr -h for cockroach help

x="c:shqktmrlinCXMPLRTE" 

blue="$(tput setaf 86)"
grey="$(tput setaf 245)"

if [ $# -eq 0 ]; then
    echo "$blue
    options are -[ $x ]

      -c 1 : cockroach sql --url $gerbil

      -c 2 : cockroach sql --url $uni

      -c 3 : cockroach sql --url $movr

      -s  : cockroach start-single-node --insecure --listen-addr localhost
      -r  : server running (?)
      -i  : cockroach init --insecure --host=localhost:26257
      -n  : cockroach node ls --insecure
      -q  : cockroach sql --insecure
      -k  : pkill -9 cockroach

      $grey# print info $blue
      -P  : cat $HOME/code/ghpat/crdb.txt
      -C  : cr_cmnds
      -X  : cr_tsx
      -M  : cr_mnc              $grey # start a node that will join a multi-node cluster $blue 
      -L  : cr_locality         $grey # start nodes with locality flags that will join MNC $blue 
      -R  : cr_multiregion      $grey # add regions to DB via SQL statements $blue 
      -T  : cr_topics           $grey # topics for further study $blue 

    "
fi

while getopts $x opt; do
    case $opt in

        # use "-c 1" to connect to the 'hollow-gerbil' cluster in us-w, or
        # use "-c 2" to connect to the 'university-cluster' in eu-w
        # use "-c 3" to connect to 'hollow-gerbil' movr database
        c) 
            if [ $2 -eq 1 ]; then
                cockroach sql --url $gerbil
            elif [ $2 -eq 2 ]; then
                cockroach sql --url $uni
            elif [ $2 -eq 3 ]; then
                cockroach sql --url $movr
            else
                echo "not a valid arg"
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

        ####### print info commands #######
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
        T)  cr_topics;;

        *) echo "available options are: [ $x ]";;
    esac
done

exit 0
