#!/bin/bash
# This is a comment line

echo "url and http response code "
awk '{print $8 "   " $9}' /var/log/apache2/access.log | sort | uniq -c
echo "No. of requests per hour"
awk -F[:\ ] '{print $5}' /var/log/apache2/access.log | uniq -c 


