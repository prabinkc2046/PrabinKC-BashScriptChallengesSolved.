# BashScript-Challenges
This repository contains my solutions to various bash scripting challenges. Each script addresses a specific task and demonstrates my understanding and implementation of bash scripting concepts.

**How to Use**

- Clone the repository to your local machine:
	```git clone https://github.com/<your-username>/BashScriptChallengesSolved.git```

- Navigate to the cloned repository:
	```cd BashScriptChallengesSolved```

- Each challenge solution is located in its respective file within the repository.
- Run each script by executing the following command:
	./```<script-name>```.sh

- Replace ```<script-name>``` with the name of the specific script you want to execute.

- Follow any additional instructions provided in the comments within each script.

**Challenges**

*Challenge 1:*
```Write a bash script that lists all the files in a directory and its subdirectories, and counts the number of lines in each file.```

Requirements:

	- The script should prompt the user to enter the directory path.
	- It should traverse the specified directory and its subdirectories.
	- For each file encountered, it should display the file path and the number of lines it contains.
	- The script should exclude directories from the output and only display regular files.
	- It should handle filenames with spaces or special characters correctly.

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/fileLineCounter.sh]

*Challenge 2:*
```Write a bash script that calculates the total size of all files within a directory and its subdirectories. The script should take a directory path as an argument and check if the directory exists. If the directory exists, it should recursively iterate through all files in the directory and its subdirectories, summing up their sizes. Finally, it should print the total file size in bytes.```

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/calculate_size_of_directory.sh]

*Challenge 3:*
```Write a bash script that checks the CPU utilization in the last 5 minutes and compares it to a threshold value. The script should retrieve the CPU utilization using the 'uptime' command and extract the necessary value using 'awk'. It should then set a threshold value and compare the CPU utilization to the threshold. If the CPU utilization exceeds the threshold, the script should print a message indicating that the CPU utilization is exceeding the threshold value. Otherwise, it should print a message indicating that the CPU utilization is below the threshold value.```

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/check_cpu_usage.sh]

*Challenge 4:*
```Write a Bash script that takes a directory path as an argument and lists all the empty files within that directory, including subdirectories. If the provided directory does not exist, the script should display a message indicating that it does not exist.```

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/list_empty_files.sh]

*Challenge 5:*
Write a Bash script that automates the process of creating a backup of a directory and compressing it into a tarball. The script should take two arguments: the source directory to be backed up and the destination directory where the backup file should be saved. The script should perform the following tasks:

	- Check if the source directory exists. If it doesn't, display an error message and exit.
	- Create a timestamp to be used in the backup file name, indicating the date and time of the backup.
	- Create a new directory within the destination directory with the timestamp as its name.
	- Use the tar command to create a compressed tarball of the source directory and save it in the newly created directory.
	- Display a success message indicating the backup process is completed.

Make sure to handle any potential errors that may occur during the process and provide appropriate error messages.

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/backup_directory.sh]

*Challenge 6:*
```Write a Bash script that monitors the disk usage of a predefined directory and sends an email notification if the disk usage exceeds a specified threshold. The script should be designed to be run as a cronjob and should perform the following tasks:```

	- Set a predefined directory path to monitor within the script.
	- Retrieve the current disk usage of the predefined directory.
	- Calculate the percentage of disk usage based on the total available disk space.
	- Compare the calculated percentage with the specified threshold.
	- If the disk usage exceeds the threshold, send an email notification to a specified email address with details about the directory and the current disk usage.
	- Display a success message indicating the script execution is completed.

Ensure that the script includes the necessary email configuration to send notifications. The script should be set up as a cronjob to run at a specified interval, such as once per day or once per hour, depending on your preference.

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/alert_disk_usage.sh]

*Challenge 7:*
```Write a Bash script that create README.md file when the list of command is provided as a input file to it```
	- takes inputfile which is list of commands serially as the first arguement
	- takes the output file path
	- runs the commands listed in input file and captures the outcome as well as input as required for README.md file

Solution: [https://github.com/prabinkc2046/PrabinKC-BashScriptChallengesSolved./blob/main/create_readmefile.sh]

Feel free to modify the repository name, file structure, and content of the README to suit your preferences and the challenges you've tackled. Replace <your-username> in the repository URL with your actual GitHub username.


