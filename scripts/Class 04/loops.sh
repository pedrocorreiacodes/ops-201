#!/bin/bash

servers=$(cat ./ServerList.txt)

echo "Bellow are the servers to resolve DNS"
echo "______________________________________"
for server in $servers;
do echo "$server";
done
