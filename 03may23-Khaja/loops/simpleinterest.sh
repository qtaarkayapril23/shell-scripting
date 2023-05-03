#!/bin/bash

echo " Enter the principle value: "
read p
echo " Enter the rate of interest:"
read r
echo " Enter the time period:"
read t
si=`expr $p \* $t \* $r / 100`
echo " The simple interest is "
echo $si