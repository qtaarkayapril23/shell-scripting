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