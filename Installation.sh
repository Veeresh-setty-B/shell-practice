#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0]; then
echo "Installing nginx"
dnf install nginx -y
else
echo "Installing nginx is Failure"
fi
