#!/bin/bash

DIR_F="../files"
file_r="$DIR_F/root.html"

which nc > /dev/null

if [ $? -ne 0 ]
then
    echo "Exiting - tcpreplay is not installed, please fix it :)" && exit 1
else
    echo -e "\nJust about to run the packet capture $file against interface $interfacei. You will be prompted for you 'sudo' password shortly.\n"
    echo -e "\nTo kill this listener script, hit 'Ctrl-C' or 'Ctrl-Z'.\n"
    echo -e "\nNow listening on port 80 with a the gid='root' meh!!!\n"
    while (true)
    do
        sudo nc -l 80 < $file_r
    done
fi
