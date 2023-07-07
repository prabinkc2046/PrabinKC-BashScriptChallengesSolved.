#!/bin/bash

# take the first arguement as the input file
input_file=$1

# take the second arguement as the output file
output_file=$2

# check if the file exits
if [ ! -f "$input_file" ]; then
    echo "File not found"
    exit 1
fi

# check if the output file exits,
# delete it if exits and create a new one
if [ -f "$output_file" ]; then
    rm "$output_file"
    touch "$output_file"
else
    touch "$output_file"
fi


# read the file line by line
count=1
while IFS= read -r cmd; do
    echo "$count." >> "$output_file"
    echo "\`\`\`$cmd\`\`\`" >> "$output_file" 2>&1
    output=$($cmd)
    echo "" >> "$output_file"
    echo "\`\`\`$output\`\`\`" >> "$output_file" 2>&1
    count=$(expr $count + 1)
    echo "" >> "$output_file" 2>&1
done < "$input_file"
