#!/bin/bash

set -e
trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

LOGFOLDER="/var/log/shell-script"
LOGFILE="/var/log/shell-script/$0.log"

USERID=$(id -u)
    if [ $USERID -ne 0 ]; then
        echo "Install from root"
    exit 1
    fi
mkdir -p $LOGFOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2: Failure"
    exit 1
    else
        echo "$2: Success"
    fi
}

for create  package=$@  ##give aurgument in common line
do
    dnf install $package -y &>> $LOGFILE
    VALIDATE $? "$package installed"
done