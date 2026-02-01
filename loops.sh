#!/bin/bash

USERID=$(id -u)
LOGFOLDER="/var/log/shell-script"
LOGFILE="$LOGFOLDER/$0.txt"

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

    mkdir -p $LOGFOLDER

for package in $@
do
    dnf list installed $package &>> $LOGFILE
    if [ $? -eq 0 ]; then
    echo "$package is already installed"
    else
    dnf install $package -y &>> $LOGFILE
    VALIDATE $? "Installing $package"
    fi
done