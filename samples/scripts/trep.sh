#!/bin/bash
#
# TCPreplay script for replaying packet captures through an interface
#
# Version 0.1: March 2013: Created for BSides London
# Version 0.2: May 2013: Modified for Security Onion
#

# Global Variables
VERSION="0.2"
SAMPLES="/opt/samples/markofu"
ARG=$#

# Checking for installed tools
which tcpreplay > /dev/null
if [ $? -ne 0 ]
then
    echo "Exiting - tcpreplay is not installed, please fix it :)" && exit 1
else
    t=$(which tcpreplay)
fi

# Creation of functions
# Parsing the CLI arguments

parse_args () {
    if [ $ARG -lt 1 ]
    then
        echo -e "Please examine the usage options for this script - you need some arguments!\n"
        usage
        exit 1
    fi
    for i in $@
    do
        case $i in
            -i|--interface)
                INTERFACE=$2
                shift 2
                ;;
            -h|--help)
                usage
                exit 0;
                ;;
            -v|--version)
                echo -e "Version $VERSION of $0\n"
                exit 0;
                ;;
        esac
    done
}

# Describing the usage
usage () {
    echo "Usage:
    -i|--interface : Target interface to have tcpreplay run against
    -h|--help      : print this message
    -v|--version   : print the version of this script

    Sample Usage: bash $0 -i $INTERFACE

    Specifically: bash $0 -i eth0"
}

run_tcpreplay_all () {
    # Running the tcpreplay script against all pcaps in the "workshop" repo and adding "-t" for top speed
    if [ $INTERFACE == "" ]
    then
        echo -e "\nExiting - no interface specified!!\n";
        exit 2;
    else
        echo -e "\nJust about to run the packet capture $file against interface $interfacei. You will be prompted for you 'sudo' password shortly.\n"
    fi
    for file in $SAMPLES/*pcap
    do
        sudo $t -q -i $INTERFACE -t $file
    done
}

# Running of functions

parse_args $@

run_tcpreplay_all
