#!/bin/bash

add(){
    c=`expr $1 + $2`
    return $c
}

add 6 7
echo $?