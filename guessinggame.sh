#!/usr/bin/env bash

function guess_file_number(){
    true=$(ls -l |grep "^-"|wc -l)
    while true;#creat infinite loop
    do
        echo "pleas enter your guess"
        read  guess
        if [ $guess -lt $true ]
        then
            echo "your guess is too low"
        elif [ $guess -gt $true ]
        then
            echo "your guess is too high"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "how many files are in the current directory?"
guess_file_number
