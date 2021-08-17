#!/bin/bash
#Script: Login-History
#Author: Pedro Correia
#Date of latest revision: 17/08/21
#Purpose: Prints the login history of users on acomputer.

name=$(whoami)

echo Hello $name, how many lines would you like on your report?

read number

if ! [[ "$number" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]
then 
    echo "You must specify numbers only!" 
    exit 0 
fi

function showLoginHistory() {
    last | head -n $1
}

showLoginHistory $number