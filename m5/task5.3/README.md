# Task 5.3

1. How many states could has a process in Linux?

Process states are:

* created;
* ready;
* waiting;
* running;
* terminated;

2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.
Installed `psmisc` package on CentOS7. Used command `pstree -h` to highlight current process tree:
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2014.17.53.jpg)

3. What is a proc file system?
/proc/ is a special directory containing files with information about the system. Directories with numbers contain info about processes with corresponding PIDs.

4. Print information about the processor (its type, supported technologies, etc.).
To do this, view */proc/cpuinfo* file:
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2012.44.40.jpg)

5. Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc.
To output above info, use `o` to set output info:
`ps o user,args,group,pid,gid,%cpu,%mem`
This lists process user owner, command arguments, group owner, PID, GID, and CPU and memory used:
![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2014.33.08.jpg)

6. How to define kernel processes and user processes?
When viewing processes with *ps*, kernel processes names are put in square brackets like [this]:
![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2013.00.47.jpg)

7. Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?
Processes statuses displayed by *ps* are:

```
D    uninterruptible sleep (usually IO)
R    running or runnable (on run queue)
S    interruptible sleep (waiting for an event to complete)
T    stopped by job control signal
Z    defunct ("zombie") process, terminated but not reaped by
    its parent
```

![Screenshot 7](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2022.01.57.jpg)

8. Display only the processes of a specific user.

To do this, use command `ps -u username`:
![Screenshot 8](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2021.48.26.jpg)

9.  What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?

--
10. What information does top command display?

*top* command displays real-time info about running processes, CPU and memory load.
11. Display the processes of the specific user using the top command.

Similar to *ps*, use command `top -u username`:
![Screenshot 11](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2021.51.37.jpg)
12.  What interactive commands can be used to control the top command? Give a couple of examples.

`k` key opens a prompt to kill a process.
`r` key opens a prompt to renice a process priority.
`f` key opens a menu to configure fields shown.
`c` key toggles full path of process commands.
13.   Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

To sort processes by time taken, use key `Shift` + `T`;
by CPU used, `Shift` + `P`;
by memory used, `Shift` + `M`:
![Screenshot 13](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m5/task5.3/Screenshots/Screenshot%202021-01-27%20at%2022.40.29.jpg)
14.     Concept of priority, what commands are used to set priority?

To run a process with specific priority, *nice* command is used. To change priority of an already running process, use *renice* command.
15.    Can I change the priority of a process using the top command? If so, how?

A process can be *reniced* from *top* using key `r`.
16.   Examine the kill command. How to send with the kill command
process control signal? Give an example of commonly used signals.

*kill* command sends a shutdown signal to a process. To send a specific signal, use `kill -N process`. The most common signals are 15 for default termination and 9 for killing process.
17.  Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.

*jobs* command is used to view active processes.
*fg* command resumes a process in foreground.
*bg* command resumes a process in background.
*nohup* runs a command immune to hangup signals.

--