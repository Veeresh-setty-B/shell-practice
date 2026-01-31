#!/bin/bash

USERID=$(id -u)
    if [ $USERID -ne 0 ]; then
        echo "Install from root"
    exit 1
    fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 is Failure"
    exit 1
    else
        echo "$2 nginx"
    fi
}

dnf install nginx -y
VALIDATE $? "Installing success"

dnf install nodejs -y
VALIDATE $? "Installing success"

dnf install mysql -y
VALIDATE $? "Installing success"