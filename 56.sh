# Find Min from N Inputs
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
read min

for ((i=2;i<=n;i++))
do
    read num
    if [ $num -lt $min ]; then
        min=$num
    fi
done

echo "$min"
