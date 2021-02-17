# Module 7: bash scripting

## A. Create a script that uses the following keys:

1. When starting without parameters, it will display a list of possible keys and their description.
2. The --all key displays the IP addresses and symbolic names of all hosts in the current subnet
3. The --target key displays a list of open system TCP ports.
4. The code that performs the functionality of each of the subtasks must be placed in a separate function.

```
#!/bin/bash

PARAM1="The --all key displays the IP addresses and symbolic names of all hosts in the current subnet."
PARAM2="The --target key displays a list of open system TCP ports."

no_params () {
    echo $PARAM1
    echo $PARAM2
}
show_hosts () {
    arp -a | awk '{print $2}' | grep -o -E '[.0-9]+'
}
show_ports () {
    ss -t | awk '{print $4}' | cut -d':' -f2 | sort -u | grep -o -E '[0-9]+'
}

if [ "$#" == "0" ]; then
    no_params
    exit 1
fi

if [ "$1" == "--all" ]; then
    show_hosts
    exit 0
elif [ "$1" == "--target" ]; then
    show_ports
    exit 0
fi
```

## B. Using Apache log example create a script to answer the following questions:

1. From which ip were the most requests?
2. What is the most requested page?
3. How many requests were there from each ip?
4. What non-existent pages were clients referred to?
5. What time did site get the most requests?
6. What search bots have accessed the site? (UA + IP)

```
#!/bin/bash

most_requests_ip () {
    echo 'Most requests were from IP:'
    awk '{print $1}' $1 | sort | uniq -c | sort -n -r | head -1
}
most_popular_page () {
    echo 'Most popular page:'
    awk '{print $7}' $1 | uniq -c | sort -n -r | head -1 
}
requests_per_ip () {
    echo 'Requests per IP:'
    awk '{print $1}' $1 | sort | uniq -c | sort -n -r
}
pages_404 () {
    echo 'Non-existent pages clients were referred to:'
    awk '{ if($9 == 404) { print $7 } }' $1 | sort | uniq
}
time_most_requests () {
    echo 'Most requests at:'
    awk  '{print $4}' $1 | sed 's/\[//g' |  cut -d: -f '1 2 3 4' | uniq -c | sort -n -r | head -1
}
search_bots () {
    echo 'Search bots:'
    awk -F\" '{print $6}' $1 | grep 'bot' | sort | uniq
}

if [ "$#" == "0" ]; then
    echo 'Expecting apache log file as an argument'
else
    most_requests_ip $1
    most_popular_page $1
    requests_per_ip $1
    pages_404 $1
    time_most_requests $1
    search_bots $1
fi
```

## C. Create a data backup script that takes the following data as parameters:

1. Path to the syncing directory.
2. The path to the directory where the copies of the files will be stored.
3. In case of adding new or deleting old files, the script must add a corresponding entry to the log file indicating the time, type of operation and file name. [The command to run the script must be added to crontab with a run frequency of one minute]

```
#!/bin/bash

LOGFILE='/var/log/sync.log'

rsync -ah --out-format='%t %o %n' --delete $1 $2  >> $LOGFILE
```
