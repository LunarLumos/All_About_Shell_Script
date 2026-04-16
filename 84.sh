# Bubble Sort Array
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
done

for ((i=0;i<n;i++))
do
    for ((j=0;j<n-i-1;j++))
    do
        if [ ${arr[$j]} -gt ${arr[$j+1]} ]; then
            temp=${arr[$j]}
            arr[$j]=${arr[$j+1]}
            arr[$j+1]=$temp
        fi
    done
done

echo "Sorted array:"
for ((i=0;i<n;i++))
do
    echo "${arr[$i]}"
done
