# Task1.Part1

* Logged in to the system as **root**.
* ![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-13%20at%2016.13.09.jpg)
* Used the `passwd` command to change the password. It changed **/etc/shadow** file.
* ![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-13%20at%2016.30.58.jpg)
* Determined the users registered in the system looking into **/etc/passwd** file. Those users executing commands via **/sbin/nologin** are pseudousers used by different OS services and logging in the system as them is disabled. It is possible to log in as **root** and **vagrant** users.
* ![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-13%20at%2016.35.35.jpg)
* Changed personal information about myself (standard **vagrant** user) using `chfn` command. Viewed info using `finger` command.
* ![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-14%20at%2018.45.13.jpg)
* Became familiar with the Linux help system and the `man` and `info` commands. Got help on the previously discussed commands, define and describe any two
keys for these commands.
* Example: `ls` with keys `-lah` lists all files including hidden, in a long format with human-readable files size.
* `-l` for a long listing format
* `-a` for all files
* `-h` for human-readable format
* ![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2021.43.40.jpg)
* Explored the more and less commands using the help system. Viewed the contents
of files _.bash*_ using commands.
* ![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2021.46.39.jpg)
* Described in **~/.plan** that i'm working on laboratory work 1.
* ![Screenshot 7](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2021.48.38.jpg)
* Listed the contents of the home directory using the `ls` command (done in screenshot 5)

## Part 2

* Examined the `tree` command. Master the technique of applying a template, for example, display all files that contain a character c, or files that contain a specific sequence of characters.
* Example: `tree -aP "*bash*" --prune` to list all files with _bash_ in name in current (home) directory.
* Listed subdirectories of the root directory up to and including the second nesting level using command `tree -L 2 /`.
* ![Screenshot 8](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2022.34.57.jpg)
* What command can be used to determine the type of file (for example, text or binary)? 
* Answer: `file`
* Example: 
```
[root@localhost vagrant]# file myPipe
myPipe: fifo (named pipe)
```
* To go back to home directory of the current user, use `cd ~` or `cd $(pwd)`.
* Become familiar with the various options for the `ls` command. Give examples of listing directories using different keys. Explain the information displayed on the terminal using the `-l` and `-a` switches:
* `-l` for a long listing format
* `-a` for all files, hidden too
* Performed the following sequence of operations:
* created a subdirectory in the home directory: `mkdir myDir`
* in this subdirectory created a file containing information about directories located in the root directory (using I/O redirection operations) with command `tree -d -L 1 / > myDir/rootDirectories`
* viewed the created file with `cat` 
* copied the created file to home directory using relative and absolute addressing with `cp myDir/rootDirectories .` (relative) and `cp /home/vagrant/myDir/rootDirectories /home/vagrant/` (absolute).
* deleted the previously created subdirectory with the file requesting removal with `rm -rf myDir`; deleted the file copied to the home directory with `rm rootDirectories`.
* ![Screenshot 9](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2022.50.37.jpg)
* Perform the following sequence of operations:
- create a subdirectory test in the home directory;
- copy the .bash_history file to this directory while changing its name to labwork2;
- create a hard and soft link to the labwork2 file in the test subdirectory; - how to define soft and hard link, what do these
concepts;
- change the data by opening a symbolic link. What changes will happen and why
- rename the hard link file to hard_lnk_labwork2;
- rename the soft link file to symb_lnk_labwork2 file;
- then delete the labwork2. What changes have occurred and why?
* Using the locate utility, find all files that contain the squid and traceroute sequence.
* Determine which partitions are mounted in the system, as well as the types of these partitions.
* Count the number of lines containing a given sequence of characters in a given file.
*  Using the find command, find all files in the /etc directory containing the host character sequence.
*  List all objects in /etc that contain the ss character sequence. How can I duplicate a similar command using a bunch of grep?
*  Organize a screen-by-screen print of the contents of the /etc directory. Hint: You must use stream redirection operations.
*  What are the types of devices and how to determine the type of device? Give examples.
* How to determine the type of file in the system, what types of files are there? 
* List the first 5 directory files that were recently accessed in the /etc
directory.
