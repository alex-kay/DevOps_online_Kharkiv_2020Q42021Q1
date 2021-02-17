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
