#!/bin/bash

USERID=$(id -u)

dnf install nginx -y
if [ $USERID -ne 0 ]; then
echo "Installing nginx is Failure"
exit 1
else
echo "Installing nginx"
fi

dnf install nodejs -y
if [ $USERID -ne 0 ]; then
echo "Installation is Failure"
exit 1
else
echo "Installing nodejs"
fi

dnf install mysql -y
if [ $USERID -ne 0 ]; then
echo "Installation is Failure"
exit 1
else
echo "Installing mysql"
fi