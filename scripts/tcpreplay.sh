#!/bin/bash
#
# TCPreplay script for replaying packet captures through an interface
#

# Checking for installed tools
which tcpreplay > /dev/null
if $? != 0
then
    echo "Exiting - tcpreplay is not installed, please fix it :)" && exit 1
else
    t=$(which tcpreplay)
fi

# Creation of functions
# Parsing the CLI arguments

parse_arg () {
    for arg in  $@
    do
        case $arg in
            -i|--interface)
                INTERFACE=$2
                shift 2
                ;;
            -f|--file)
                FILE=$2
                shift 2
                ;;
            -h|--help)
                usage
                exit 1;
                ;;
        esac
    done
}

# Describing the usage
usage () {
    echo "Usage:
    -i|--interface : Target interface to have tcpreplay run against
    -f|--file      : pcap file to be used
    -h|--help      : print this message

    Sample Usage #1: bash $0 -i $INTERFACE -f $FILE

    Specifically: bash $0 -i eth0 -f /home/mark/git/workshop/HN1.pcap"
}

run_tcpreplay () {
    # Running the tcpreplay script and adding "-t" for top speed
    $t -i $INTERFACE -t $FILE
}
