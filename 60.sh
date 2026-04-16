# Difference between Max and Min in List
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
read num

max=$num
min=$num

for ((i=2;i<=n;i++))
do
    read num

    if [ $num -gt $max ]; then
        max=$num
    fi

    if [ $num -lt $min ]; then
        min=$num
    fi
done

echo $((max - min))
