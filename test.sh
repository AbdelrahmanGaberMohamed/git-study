#!/bin/bash
# Bash script to test successful deployment of webpage index.html
# running environemnt: git actions runner ubuntu-latest
# Author: Abdelrahman Gaber
# Exit codes:
# 0: Success
# 1: Failure

if [ -f index.html && $(curl -f http://localhost/index.html | grep "Abdelrahman" | wc -l) -gt 0 ]; then
    echo "index.html exists and contains the string 'Abdelrahman'"
    exit 0
else
    echo "index.html does not exist or does not contain the string 'Abdelrahman'"
    exit 1
fi