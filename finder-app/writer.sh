#!/bin/sh

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
    echo "Error:Both writefile and writestr arguments are required"
    exit 1
fi

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

if [ $? -ne 0 ]; then
    echo "Error: not able to create directory path $dirpath"
    exit 1
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: not able to create file $writefile"
    exit 1
fi

exit 0
