#!/bin/bash

NUM1=$1


##-gt greater than
##-lt leass than
##-eq equal to 
##-ne not equal to

if [ $NUM1 -gt 20 ]; then
echo "Given number: $NUM1 is greater than 20"
elif [ $NUM1 -eq 20]
echo "Given number: $NUM1 is equal to 20"
else
echo "Given number: $NUM1 is less than 20"
fi


