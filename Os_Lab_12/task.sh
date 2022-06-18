#!/bin/bash
touch test.c
cp test1.c test.c
echo "Enter Your Choice"
read choice
if [ ${choice} -eq 1 ]
then
    gcc test.c -o test.o
elif [ ${choice} -eq 2 ]
then
    gcc test.c -o test.o && ./test.o
elif [ ${choice} -eq 3 ]
then
    cat test.c
else
    echo "Wrong Input"
fi
