#!/bin/bash

paths=( [0]="./directories"
        [1]="./directories/dir1"
        [2]="./directories/dir2"
        [3]="./directories/dir3"
        [4]="./directories/dir4"
)

mkdir ${paths[0]}
mkdir ${paths[1]}
mkdir ${paths[2]}
mkdir ${paths[3]}
mkdir ${paths[4]}


touch "${paths[1]}/file1.txt"
touch "${paths[2]}/file1.txt"
touch "${paths[3]}/file1.txt"
touch "${paths[4]}/file1.txt"