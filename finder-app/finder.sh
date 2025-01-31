#!/bin/sh

if [ $# -ne 2 ]; then
	echo "Error: Two arguments required - <directory_path> <search_string>"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
	echo "Error: $filesdir is not a directory"
	exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)

matching_lines_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $file_count and the number of matching lines are $matching_lines_count"

