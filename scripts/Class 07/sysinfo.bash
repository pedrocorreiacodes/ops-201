#!bin/bash

# Script:                   Ops 201 Class 7
# Author:                   Pedro Correia   
# Date of latest revision:  31/08/2021
# Purpose:                  

echo "Computer: "$(lshw | grep "" -m1)
echo "CPU: "$(lshw | grep "*-cpu" -A 5)
echo "RAM: "$(lshw | grep "*-memory" -A 3)
echo "Display Adapter: "$(lshw | grep "*-display" -A 10)
echo "Network Adapter: "$(lshw | grep "*-network" -A 15)