#!/bin/bash

# AREA="3.14 * $r * $r" 
# for AREA in $AREA
# do 
#     echo "Enter the radius"
#     read r
#     echo "Area of the Circle is"
#     echo "3.14 * $r * $r" | bc
# or/
#     # echo "Enter the radius of circle"
#     # read r
#     # PI=3.14159
#     # AREA=$( echo "$PI*($r^2)" | bc )
#     # echo "Area of a circle is $AREA" 
# done    

read -p "Enter Principal amount: " principal
read -p "Enter time (in years): " time
read -p "Enter Rate of Interest: " rate
si=$(echo "scale=2; (($principal * $time * $rate) / 100)" | bc)
echo "simple interest: $si"