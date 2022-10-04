#!/bin/bash

# a filename f, a color c (red, blue, yellow, white or green) and an integer i 
if [ $# -lt 3 ]; then
    #script=$(basename $0)
    script=$(echo $0 | rev | cut -d/ -f 1 | rev)
    echo "$script [filename] [color] [counter]"
    exit 1
fi

if [ ! -f $1 ]; then
    echo "$1 is not a valid file."
    exit 1
fi

if [[ "$2" != "red" && "$2" != "blue"  && 
      "$2" != "yellow" && "$2" != "white" && 
      "$2" != "green" ]]; then
    echo "Accepted colors: red blue yellow white green"
    #exit 1
fi

echo " red blue yellow white green " | grep " $2 " >/dev/null
if [ $? != 0 ]; then
    echo "Accepted colors: red blue yellow white green"
    exit 1
fi

expr $3 '+' 1 >/dev/null 2>&1
if [ $? != 0 ]; then
    echo "Counter must be an integer."
    exit 1
fi

if [ ! $3 -gt 0 ]; then
    echo "Counter must be greater than 0"
    exit 1
fi

n=$(grep $2 $1 | wc -l)

if [ $n == $3 ]; then
    echo "TRUE"
    exit 0
else
    echo "FALSE"
    exit 1
fi