#!/bin/bash

directories=( [0]="./directories/dir1"
        [1]="./directories/dir2"
        [2]="./directories/dir3"
        [3]="./directories/dir4"
        [4]="./directories/dir5"
)

mkdir ${directories[0]}
mkdir ${directories[1]}
mkdir ${directories[2]}
mkdir ${directories[3]}
mkdir ${directories[4]}


touch "${directories[1]}/file1.txt"
touch "${directories[2]}/file1.txt"
touch "${directories[3]}/file1.txt"
touch "${directories[4]}/file1.txt"