#!/bin/bash

echo "Variables are $@"
echo "Number of Variables are $#"
echo "Current working directory is $PWD"
echo "User name is $USER"
echo "User home directory is $HOME"
echo "Current PID is $$"
sleep 100 &
echo "Previous backend PID $!"
echo "Script name is $0"
exit 1
