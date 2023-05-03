#!/bin/bash
read -p "Enter the number: " NUMBER
echo "You have entered $NUMBER"
REMAINDER=$(($NUMBER % 2))
if [[ $REMAINDER -eq 0 ]]
then 
    echo "$NUMBER is even"
else
    echo "$NUMBER is odd"
fi        

