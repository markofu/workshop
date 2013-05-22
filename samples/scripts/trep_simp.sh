#!/bin/bash
# File Detailing Usage for `tcpreplay` during this Workshop.
#
# Sample:    `sudo tcpreplay -i eth0 -t attack_trace.pcap`
#
# and then watch the packets hit Sguil, Snorby etc :)
#
# Version 0.1: March 2013: Created for BSides London
# Version 0.2: May 2013: Modified for Security Onion

# Global Variables
VERSION="0.2"
SAMPLES="/opt/samples"

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

    echo "What is the name of the pcap file (the path is assumed to be '/opt/samples'!)"
    read file
}

replay () {

    echo -e "\nJust about to run the packet capture $file against interface $interface.\n\nYou may be prompted for you 'sudo' password shortly.\n"

    sudo tcpreplay -q -i $interface -t $SAMPLES/$file

    if [ $? -eq 0 ]
        then
            echo -e "\nJust finished running tcpreplay - go check Sguil, Snorby etc. It may take a few minutes for the their respective databases to populate!\n"
        else
            echo -e "\nThere was a problem of some sort running tcpreplay against $file on the $interface interface"
    fi
}

usage () {
    echo "Usage:
    -h|--help      : print this message
    -v|--version   : print the version of this script

    Sample Usage: bash $0"
}

parse_args $@

param_args

replay

