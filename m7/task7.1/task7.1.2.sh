#!/bin/bash

# Task 7.1

# B. Using Apache log example create a script to answer the following questions:
# 1. From which ip were the most requests?
# 2. What is the most requested page?
# 3. How many requests were there from each ip?
# 4. What non-existent pages were clients referred to? 
# 5. What time did site get the most requests?
# 6. What search bots have accessed the site? (UA + IP)


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
