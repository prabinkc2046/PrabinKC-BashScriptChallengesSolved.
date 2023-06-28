#!/bin/bash

# Calculate Total File Size in a Directory and Subdirectories
# This script takes a directory path as an argument and calculates the total size of all files within the directory and its subdirectories.

# Take directory path as an argument
path_to_dir=$1

# check if the directory exits or not
if [ ! -d "$path_to_dir" ]; then
    echo "Directory: $path_to_dir does not exist"
    exit
fi

# Take the sum of each file in the directory and subdirectories
sum=$(find "$path_to_dir" -type f -exec stat -c %s {} + | awk '{sum += $1}END{print sum}') 

# Print the total file size
echo "The total file size: $sum bytes."
