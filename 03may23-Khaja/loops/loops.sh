#!/bin/bash

# This program will print numbers from 1 to 10
# for index in {1..10}
# do
#     echo $index
# done

# index=1
# while [[ $index -le 10 ]]
# do 
#     echo $index
#     # increment the value
#     index=`expr $index + 1`
#     # index=$((index + 1))
# done

# SOFTWARES="git tree nano vim"

# for SOFTWARE in $SOFTWARES
# do 
#     echo "SOFTWARE to be installed is $SOFTWARE"
# done    

TO_BE_INSTALLED=y
while [[ "$TO_BE_INSTALLED" == "y" || "$TO_BE_INSTALLED" == "Y" || "$TO_BE_INSTALLED" == "Yes" "$TO_BE_INSTALLED" == "Yes" ]]
do
    #ask the software to be installed
    read -p "Enter the software which you want to install: " NAME
    echo "Software to be installed is $NAME"
    read -p "If you want to install more softwares enter y and any other key to exit: " TO_BE_INSTALLED
done    