#!/bin/bash

echo "Enter number of terms"
read n

a=0
b=1
sum=0

for ((i=1;i<=n;i++))
do
    sum=$((sum + a))
    c=$((a + b))
    a=$b
    b=$c
done

echo "Sum = $sum"
