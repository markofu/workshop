#!/bin/bash
# File Detailing Usage for `tcpreplay` during this Workshop.
#
# Use `tcpreplay` to replay newdat3.log (pcap from HN1, one of the Honeynet Captures) onto your "eth0/eth1/eth2"" interface (you may 
# need/want to use a different interface, just make sure it's one that's being monitored by Sguil).
#
# Sample:    `sudo tcpreplay -i eth0 -t newdat3.log`
#
# And then watch the packets hit Sgui, Snorby etc.

# Global Variables
VERSION="0.1"

# Creating some functions

# Parsing the CLI arguments

parse_args () {
    for i in $@
    do
        case $i in
            -h|--help)
                usage
                exit 0;
                ;;
            -v|--version)
                echo -e "\nVersion $VERSION of $0\n"
                exit 0;
                ;;
        esac
    done
}

param_args () {
    echo "What interface do you want to run tcpreplay against?"
    read interface

    echo "What is the name of the pcap file (include the full path please!)"
    read file
}

replay () {

    echo -e "\nJust about to run the packet capture $file against interface $interfacei. You will be prompted for you 'sudo' password shortly.\n"

    sudo tcpreplay -q -i $interface -t $file

    if [ $? -eq 0 ]
        then
            echo -e "\nJust finished running tcpreplay - go check Sguil, Snorby etc. It should take a few minutes for the their respective databases to populate!\n"
        else
            echo -e "\nThere was a problem of some sort running tcpreplay against $file on the $interface interface"
    fi
}

usage () {
    echo "Usage:
    -h|--help      : print this message
    -v|--version   : print the version of this script

    Sample Usage #1: bash $0"
}

parse_args $@

param_args

replay

