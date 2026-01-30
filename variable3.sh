#!/bin/bash

NUMBER1=100
NUMBER2=200
NUMBER3=300
NUMBER4=400

SUM=$((NUMBER1+NUMBER2+NUMBER3))
SUB=$((NUMBER3-NUMBER1))
MUL=$((NUMBER2*NUMBER1))

echo "Addition of numbers is $SUM"

echo "Substraction of numbers is $SUB"
echo "Multiplications of numbers is $MUL"

##Arrays
FOOD=("BREAKFAST" "LUNCH" "COFFEE" "DINNER")
echo "My food are ${FOOD [@]}"
echo "Morning I eat ${FOOD [0]}"
echo "Afternoon I eat ${FOOD [1]}"
echo "Evening I drink ${FOOD [2]}"
echo "Night I eat ${FOOD [3]}"