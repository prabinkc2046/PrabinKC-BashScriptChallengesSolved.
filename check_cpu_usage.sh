#!/bin/bash

#check the CPU utilisation in the last 5 minutes
cpu_usage=$(/usr/bin/uptime | /usr/bin/awk '{print $10}')

#setting the threshold value
threshold_cpu=0.80
#check if the CPU utilisation is greater than threshold
if  [ "$cpu_usage" > "$threshold_cpu" ] ; then
    echo "CPU utilisation is exceeding threshold value 80%"
else
    echo "CPU utilisation is below threshold value"
fi



