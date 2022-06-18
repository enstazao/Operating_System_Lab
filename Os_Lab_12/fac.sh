#!/bin/bash
fac=1
echo  -n "Enter the Number: "
read n
while [ ${n} -gt 1 ]
do 
    fac=`expr ${fac} \* ${n}`
    n=`expr ${n} - 1`
done
echo ${fac}
