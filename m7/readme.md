# Task 7.1

## Module 7

### Linux administration with bash

__A. Create a script that uses the following keys:__

1. When starting without parameters, it will display a list of possible keys and their description.
2. The --all key displays the IP addresses and symbolic names of all hosts in the current subnet
3. The --target key displays a list of open system TCP ports.
The code that performs the functionality of each of the subtasks must be placed in a separate function
[Code](m7/script1.sh) for Section A
![Screen](./images/71.png)

__B. Using Apache log example create a script to answer the following questions:__

1. From which ip were the most requests?
2. What is the most requested page?
3. How many requests were there from each ip?
4. What non-existent pages were clients referred to?
5. What time did site get the most requests?
6. What search bots have accessed the site? (UA + IP)

[Code](m7/script2.sh) for Section B
![Screen](./images/72.png)
__C. Create a data backup script that takes the following data as parameters:__

1. Path to the syncing directory.
2. The path to the directory where the copies of the files will be stored.
In case of adding new or deleting old files, the script must add a corresponding entry to the log file
indicating the time, type of operation and file n

[Code](m7/script3.sh) for Section C
![Screen](./images/73.png)
[Source for solving task](https://ubuntu.com/server/docs/backups-shell-scripts)
