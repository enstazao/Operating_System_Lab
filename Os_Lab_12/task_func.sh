#!/bin/bash
DoTask() {
    touch test.c
    cp test1.c test.c
    echo "enter your choice"
    echo "Press 1 To Compile the File"
    echo "Press 2 To Compile and Run"
    echo "Press 3 To Print the Content of the Orignal FIle"
    read choice
    case ${choice} in 
    1) gcc test.c -o test.o;;
    2) gcc test.c -o test.o && ./test.o;;
    *) cat test.c;;
    esac
}

DoTask

