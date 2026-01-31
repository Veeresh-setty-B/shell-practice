#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
echo "Installing nginx"
dnf install nginx -y
else
echo "Installing nginx is Failure"
fi

if [ $USERID -eq 0 ]; then
echo "Installing nodejs"
dnf install nodejs -y
exit 1
else
echo "Installation is Failure"
exit 1
fi
