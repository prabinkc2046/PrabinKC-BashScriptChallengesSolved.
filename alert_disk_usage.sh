#!/bin/bash
# a Bash script that monitors the disk usage of a predefined directory and sends 
# an email notification if the disk usage exceeds a specified threshold. 
# script is designed to be run by cronjob 
# script performs the following tasks:
# 1.Set a predefined directory path to monitor within the script.
# 2.Retrieve the current disk usage of the predefined directory.
# 3.Calculate the percentage of disk usage based on the total available disk space.
# 4.Compare the calculated percentage with the specified threshold.
# 5.If the disk usage exceeds the threshold, send an email notification to a specified email address with details about the directory and the current disk usage.
# 6.Display a success message indicating the script execution is completed.

# set the threshold disk usage percent to alert when the target exceed the value
threshold_disk_usage_percent=80

# set the directory to be monitored
target_dir="$HOME"

# check the total size of target directory
# used printf "%.0f" to remove "e" in the output of data size
current_size_of_target=$(find "$target_dir" -type f -exec stat -c "%s" {} + | awk '{size += $1}END{printf "%.0f", size}')


# Get the total available disk size in bytes
total_available_disk_size=$(df -B1 / | awk 'NR==2{print $4}')


# calculate the percentage of disk usage by the target directory
calc_disk_usage_by_target(){
    local current_size_of_target=$1
    local total_available_disk_size=$2
    percent_use_by_target=$(
        echo "scale=0; ($current_size_of_target / $total_available_disk_size) * 100" | bc
    )
    echo "$percent_use_by_target"
}

# get the percent use of disk by the target directory
percent_use_by_target= calc_disk_usage_by_target $current_size_of_target  $total_available_disk_size


# declare variable for email notification
recipient="somebody@somewhere"
subject="High disk space usage by $target_dir"
body="Disk usage by $target_dir is exceeding the threshold value"

# check if the disk usaged by the target directory has exceeded or not
# alerts if target exceeds the threshold value
if [[ $percent_use_by_target -gt $threshold_disk_usage_percent ]]; then
    echo "$body" | mail -s "$subject" "$recipient"
else
    echo "Nothing to worry about disk usage"
fi
