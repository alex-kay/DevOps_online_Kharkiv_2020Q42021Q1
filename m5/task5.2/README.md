# Task 5.2

1) Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them?
*/etc/passwd* file lines have the following fields: `user name:password:UID:GID:comment:home dir:login shell`.
*/etc/group* file lines have the following fields: `group name:password:GID:users in the group`.
2) What are the uid ranges? What is UID? How to define it?
UID is a user id, an unique number used to identify a Linux user. Usually, UIDs from 0 to 999 are assigned for pseudousers, and regular users UIDs start from 1000 and end with 60000 (these ranges are set by default in */etc/login.defs* config file and can be changed). User's UID, groups belonging to GIDs can be shown using command `id`.
3) What is GID? How to define it?
GID is a group identification number, similar to an user's ID. Groups GIDs are defined in /etc/group file. Example command: `cat /etc/group | grep "root"`. User's UID, groups belonging to GIDs can be shown using command `id`.
4) How to determine belonging of user to the specific group?
This information is defined in */etc/group* file, also can be shown using commands `groups` or `id`.
5) What are the commands for adding a user to the system? What are the basic parameters required to create a user?
New users can be created using commands `useradd` and `adduser`. Some of the basic parameters to create a user using `useradd` are: username, `-d` and `-m` to define and create home dir, `-s` user login shell, `-u` user's UID, `-G` groups which user is a member of or `-U` a group with same name as user which is created.
6) How do I change the name (account name) of an existing user?
To change a user's account name, use command `usermod -l`.
Example: `usermod -l newname username`.
7) What is skell_dir? What is its structure?
It's a "skeleton directory" which defines a new created user's home directory structure. By default, SKEL dir is located at /etc/skel. In my example, it contains *.bashrc, .bash_logout, .bash_profile* files.
![Screenshot](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.2/Screenshots/Screenshot%202021-01-23%20at%2020.02.27.jpg)
8) How to remove a user from the system (including his mailbox)?
Remove a user with command `userdel` , flag `-r` removes also his home dir and mailbox.
Example: `userdel -r username`.
9) What commands and keys should be used to lock and unlock a user account?
User accounts can be locked with commands `passwd -l username` or `usermod -L username` and unlocked with `passwd -u username` or `usermod -U username`.
10) How to remove a user's password and provide him with a password-free login for subsequent password change?
11) Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
To view directory extended format, use `ls -la`. The long list info consists of columns:
file type and access rights | count of symlinks for file | user owner name | group name | file size | last modification date | file name
12) What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
Access rights are R for reading, W for writing and X for executing files (RWX). Roles are U for user owner, G for group the file belongs to, and O for others (UGO).
13) What is the sequence of defining the relationship between the file and the user?
14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.
File ownership is changed using `chown`
15) What is an example of octal representation of access rights? Describe the umask command.
16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.
17) What file attributes should be present in the command script?
Command script file should have read and execute attributes to be run, for example 755.
