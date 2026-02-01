#!/bin/bash

USERID=$(ip -u)

if [ $USERID -ne 0 ]; then
    echo "Run the command with ROOt user"
    exit 1
else
    echo "Installing"
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2: Failure"
    exit 1
else
    echo "$2 : Success"
}
for package in $@
do
    dnf install $@ -y
    VALIDATE $? "Installing $package"
done