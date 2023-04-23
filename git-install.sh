`#!/bin/bash

USERID=$(id -u)

# Check user is root or not

if 
   [ $USERID -ne 0 ]; then
        echo "You need to be root user to exit this script"
        exit 1
fi

apt install git -y

if  
   [ $? -ne 0 ]; then 
        echo "Installing Git is failure"
        exit 1
else
        echo "Installing Git is success"
fi