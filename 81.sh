# Read N Numbers into Array and Print
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
done

echo "Array elements:"
for ((i=0;i<n;i++))
do
    echo "${arr[$i]}"
done
