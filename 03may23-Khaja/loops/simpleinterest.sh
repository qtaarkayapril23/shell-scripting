#!/bin/bash

echo " Enter the principle value: "
read p
echo " Enter the rate of interest:"
read t
echo " Enter the time period:"
read r
si=`expr $p \* $t \* $r / 100`
echo " The simple interest is "
echo $si

# read -p "Enter Principal amount: " principal
# read -p "Enter time (in years): " time
# read -p "Enter Rate of Interest: " rate
# si=$(echo "scale=2; (($principal * $time * $rate) / 100)" | bc)
# echo "simple interest: $si"