#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Installing nginx is Failure"
exit 1
else
echo "Installing nginx"
dnf install nginx -y
fi

if [ $USERID -ne 0 ]; then
echo "Installation is Failure"
exit 1
else
echo "Installing nodejs"
dnf install nodejs -y
exit 1
fi
