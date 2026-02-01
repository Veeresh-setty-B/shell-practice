#!/bin/bash

USERID=$(id -u)

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
    fi
    }
for package in $@
do
    dnf list installed $package
    if [ $? -eq 0 ]; then
    echo "$package is already installed"
    else
    dnf install $package -y
    VALIDATE $? "Installing $package"
    fi
done