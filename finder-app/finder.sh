#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
    echo "Error: The directory path and search string must be provided"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

fileCount=$(find "$filesdir" -type f | wc -l)

matchingLines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $fileCount and the number of matching lines are $matchingLines"

exit 0

