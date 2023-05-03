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

echo -n "Enter the radius here: "
read r
radius_square=`echo $r \* $r | bc -l`
pi=`echo 3.142 | bc -l`
AREA=`echo $radius_square \* $pi | bc`
echo "Area of the circle is: $AREA"