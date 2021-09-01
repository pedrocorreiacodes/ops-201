#!/bin/bash

option="y"

while [ $option == "y" ]
do
    ps aux
    echo "Specify the PID of the process to kill"
    read pid
    kill -9 $pid
    echo "Do you want to kill another process? (y to continue / any other key to stop"
    read option
done
