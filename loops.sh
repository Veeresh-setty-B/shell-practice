#!/bin/bash

USERID=$(ip -u)

if ($USERID -ne 0); then
    echo "Run the command with ROOt user"
else
    echo "Installing"
fi
VALIDATE { if ($1 -ne 0)
    echo "$2: Failure"
else
    echo "$2 : Success"
}
for package in $@
do
    dnf install $@ -y
    VALIDATE $? "Installing $package"
done