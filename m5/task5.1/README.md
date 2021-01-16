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
* Answer: `file` command.
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
* viewed the created file with `cat`.
* copied the created file to home directory using relative and absolute addressing with `cp myDir/rootDirectories .` (relative) and `cp /home/vagrant/myDir/rootDirectories /home/vagrant/` (absolute).
* deleted the previously created subdirectory with the file requesting removal with `rm -rf myDir`; deleted the file copied to the home directory with `rm rootDirectories`.
* ![Screenshot 9](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-15%20at%2022.50.37.jpg)
* Performed the following sequence of operations:
* created a subdirectory test in the home directory `mkdir test`;
* copy the .bash_history file to this directory while changing its name to labwork2 `cp .bash_history test/labwork2`;
* created a hard `ln test/labwork2 hard` and soft `ln -s test/labwork2 soft` link to the labwork2 file in the test subdirectory
* changed the data by opening a symbolic link. Both the labwork2 and hard link files are changed, but not the soft link file.
* renamed the hard link file to hard_lnk_labwork2;
* renamed the soft link file to symb_lnk_labwork2 file;
* then deleted the labwork2. Hard link file is still accessible, but soft link file is empty.
* ![Screenshot 10](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-16%20at%2011.18.42.jpg)
* Using the `locate` utility, listed all files that contain the **squid** and **traceroute** sequence.
* ![Screenshot 11](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-16%20at%2011.38.55.jpg)
* Determined which partitions are mounted in the system using `sudo fdisk -l`.
* Counted the number of lines containing a given sequence of characters in a given file. Example: `grep -c 'ls' .bash_history`.
* Using the `find` command, found all files in the /etc directory containing the host character sequence: `find /etc -type f -exec grep host {} +`.
* ![Screenshot 12](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-16%20at%2011.58.37.jpg)
* Listed all objects in /etc that contain the _ss_ character sequence: `grep "ss" /etc/*`.
* ![Screenshot 13](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.1/Screenshots/Screenshot%202021-01-16%20at%2011.58.49.jpg)
* Organized a screen-by-screen print of the contents of the /etc directory: `tree /etc | more`.
* What are the types of devices and how to determine the type of device? Devices are listed in _/dev_ directory. There are block and character devices, determine them using `file` on the device file.
* Examples: _/dev/sda_ block device, _/dev/random_ character file.
* There are regular files, directories, character devices, block devices, socket files, named pipes, symbolic links file types in Linux. Types of files are seen when listing files using `ls -l` command, with `-` as regular file, `d` for directory, `l` for symlinks and so on.
* List the first 5 directory files that were recently accessed in the /etc
directory: `ls -lat /etc/ | head -7`.
