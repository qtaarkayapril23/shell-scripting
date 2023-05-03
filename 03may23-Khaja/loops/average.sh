#!/bin/bash

for((i=1; i<=6; i++))
do 
    echo -e "\n Enter Subject $i: "
    read marks[$i]
done
total=$((marks[1]+marks[2]+marks[3]+marks[4]+marks[5]+marks[6]))
avg=$((total/6))

if [ $avg -ge 80 ]
then 
    echo -e "grade A"
elif [ $avg -lt 80 ] && [ $avg -gt 70 ]
then 
    echo -e "grade B"        
elif [ $avg -lt 70 ] && [ $avg -gt 60 ]
then 
    echo -e "grade C" 
elif [ $avg -lt 60 ] && [ $avg -gt 50 ]
then 
    echo -e "grade D"
elif [ $avg -lt 50 ] && [ $avg -gt 40 ]
then 
    echo -e "grade E"
else
    echo -e "Better luck next time..."
fi              