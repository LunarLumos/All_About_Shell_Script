#!/bin/bash

fib() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        a=$(fib $(( $1 - 1 )))
        b=$(fib $(( $1 - 2 )))
        echo $((a + b))
    fi
}

echo "Enter number of terms"
read n

echo "Fibonacci series:"

for ((i=0;i<n;i++))
do
    fib $i
done
