#!/bin/bash

# Take the directory path as an arguement
dir_path=$1

# Check if the provided directory exists or not
if [ ! -d "$dir_path" ]; then
    echo "Directory: $dir_path does not exists."
    exit 0
fi

# list all the files recursively using ls -lR
# find the files with file size zero 
empty_files=$(/usr/bin/ls -lR "$dir_path"| /usr/bin/awk '$5 == "0"{print $9}')

echo "The list of empty files:"
echo "$empty_files"
