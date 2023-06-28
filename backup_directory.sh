#!/bin/bash

# create a backup of a directory and compressing it into a tarball.
# script take two arguments: the source directory to be backup up
# and the destination directory where the backup file should be saved.
# script performs the folloing tasks:
# 1. check if the source directory exits. if it doesn't, display an error message and exit
# 2. create a timestamp to be used in the backup file name, indicating the date and time of the backup
# 3. create a new directory within the destination directory with the timestamp as its name
# 4. use 'tar' to create a compressed tarball of the source directory and 
# save it in the newly created directory
# 5. display a success message indicating the backup process is completed.

# take two arguments for source directory and destination directory
# take the absolute path to the directory
source=$1
dest=$2

# check if the user provides path to source and destination directory
if [ ! -n "$source" ] || [ ! -n "$dest" ]; then
    echo "2 arguments expected: try ./backup_directory "path_to_source" "path_to_destination""
    exit 1
fi

# check if the source directory exists or not
if [ ! -d "$source" ]; then
    echo "directory: $source is not found."
    echo "try providing a full path to the director: $source"
    exit 2
fi

# check if the destination directory exists or not
if [ ! -d "$dest" ]; then
    echo "directory: $dest is not found"
    echo "try providing a full path to the directory: $dest"
    exit 3
fi

# create a backup directory with timestamp within a destination directory
timestamp=$(date +%Y-%m-%d_%H-%M-%s)
backup_dir_path="$dest/$timestamp"
mkdir -p "$backup_dir_path"
echo "backup directory: $backup_dir_path is created."

# create a function that 
# check if there is existing backup file and then delete and create a new backup
create_archive() {
    archived_file="$timestamp.tar.gz"
    if [ -f "$archived_file" ]; then
        echo "Deleting a existing backup file: $archived_file"
        rm "$archived_file"
        echo "creating a new archive file and compressing it....."
        tar -czf "$archived_file" "$source"
    else
        echo "creating a new archive file and compressing it....."
        tar -czf "$archived_file" "$source"
    fi
    if [ $? != 0 ]; then
        echo "something went wrong"
        echo "arhiving and compressing failed"
        exit
    fi

}

# move a backup to destination directory
create_archive
mv "$archived_file" "$backup_dir_path"
if [ $? -eq 0 ]; then
    echo "backup is successful"
fi




















