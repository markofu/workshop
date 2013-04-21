!#/bin/bash

DIR_F="../files"
file_r="$DIR_F/root.html"

while (true)
do
    nc -l 80 < $file_r
done
