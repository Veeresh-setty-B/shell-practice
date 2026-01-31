#!/bin/bash

USERID=$(id -u)

if []; then
echo "Installing nginx"
dnf install nginx -y
else
echo "Installing nginx is Failure"
fi
