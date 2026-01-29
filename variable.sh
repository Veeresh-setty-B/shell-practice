#!/bin/bash
echo "Joindevops"

NUM1=100
NUM2=200
NUM3=300
SUM=$((NUM1+NUM3))
echo "sum is $SUM"
sleep 20 &
echo "background PID is $!"
echo "$USER"
SUB=$((NUM3-NUM1))
echo "$SUB"
MULTIPLY=$((NUM3*NUM1))
echo "multiplication is $MULTIPLY"
echo "Current Script PID is $$"
echo "Number of variable $#"
echo "Number of variable $@"
echo "$pwd"