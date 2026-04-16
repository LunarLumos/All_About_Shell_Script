# Find Max from N Inputs
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
read max

for ((i=2;i<=n;i++))
do
    read num
    if [ $num -gt $max ]; then
        max=$num
    fi
done

echo "$max"
