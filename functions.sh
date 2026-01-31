#!/bin/bash

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

dnf install nginx -y &>> $LOGFILE
VALIDATE $? "Nginx installing success"

dnf install nodejs -y &>> $LOGFILE
VALIDATE $? "Nodejs Installing success"

dnf install mysql -y &>> $LOGFILE
VALIDATE $? "Mysql Installing success"