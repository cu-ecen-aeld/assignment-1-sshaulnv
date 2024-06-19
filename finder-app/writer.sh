#!/bin/sh

if [ $# -ne 2 ]; then
	    echo "Error: Two arguments required - <file_path> <text_string>"
	        exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")

mkdir -p "$writedir"
if [ $? -ne 0 ]; then
	    echo "Error: Could not create directory path $writedir"
	        exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
	    echo "Error: Could not write to file $writefile"
	        exit 1
fi

echo "File $writefile created with content: $writestr"

