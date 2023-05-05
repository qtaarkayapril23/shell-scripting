#!/bin/bash
read -p "Enter Number" number
index=2
while [[ $index -lt number ]]
do
    REMAINDER=$((number%index))
    if [[ $REMAINDER -eq 0 ]]; then
        echo "$number is not prime"
        exit 1
    fi
    index=$((index+1))
done
echo "$number is prime"