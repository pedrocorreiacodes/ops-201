#!bin/bash

option="y"

while [ $option == "y" ]
do
    echo "Name the file you want to create."
    read filename

    if [ -e $filename ]; then
        echo "File already exists"
        else
        touch $filename
    fi

    echo "Do you want to create another file? (y to continue / any other key to stop)"
    read option
done