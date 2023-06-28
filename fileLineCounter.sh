#!/bin/bash

# Take the directory path as arguement
dir_path=$1

# checks if the user provided directory exists or not
# if the directory does not exists, exit with error message
if [ ! -d "$dir_path" ]; then
    echo "directory: $dir_path does not exists"
    exit 1
fi

# List of files within this directory
files=$(find "$dir_path" -type f )

# check if this directory is empty or not
# if found empty, exit.
if [ -z "$files" ]; then 
    echo "Directory: $dir_path is empty"
    exit 2
fi

# iterate through all the files given by the output of 
# find command
for file in $(find "$dir_path" -type f)
do
    count=$(cat "$file" | wc -l)
    echo "$file: $count"    
done


