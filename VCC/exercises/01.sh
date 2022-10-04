#!/bin/bash

# create a script that accepts:
# - filename f
# - color c (red, blue, yellow, white or green)
# - integer i
# as args and return true iff c appears i times in f
# (check if args are valid!)

# check argc
if [ $# -lt 3 ]; then
	echo "$0 [filename] [color] [integer]"
	exit 1
fi

# check file
if [ ! -f $1 ]; then
	echo "$1 is not a file"
	exit 1
fi

# check colors
if [[ "$2" != "red" &&
			"$2" != "blue" &&
			"$2" != "green" &&
			"$2" != "white" &&
			"$2" != "yellow" &&
		]]; then
	echo "possible colors are: red, green, blue, yellow, white"