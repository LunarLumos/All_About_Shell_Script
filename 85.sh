# Reverse Array
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
done

echo "Reversed array:"
for ((i=n-1;i>=0;i--))
do
    echo "${arr[$i]}"
done
