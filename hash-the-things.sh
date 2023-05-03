#!/bin/bash

printAll() {
    for i in "$1"/*;do # for all in the root directory of your Linux box
        if [ -f "$i" ]; then # if a file exists
	    echo "$i"; # print the file name
            echo "$i" | sha1sum; # print the sha1 sum
        elif [ -d "$i" ];then # if a directroy exists
            printAll "$i" # call printAll inside it (recursively, thanks CS102)
        fi
    done
}
printAll $1
