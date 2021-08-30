#!/bin/bash
#Script: Simple Script
#Author: Pedro Correia
#Date of latest revision: 16/08/21
#Purpose: Output a file with network hardware list

#Declare variables
net=$(networksetup -listallhardwareports)

#Main
echo $net > output.txt