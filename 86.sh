# Remove Duplicates from Array
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
done

echo "After removing duplicates:"

for ((i=0;i<n;i++))
do
    flag=0

    for ((j=0;j<i;j++))
    do
        if [ ${arr[$i]} -eq ${arr[$j]} ]; then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]; then
        echo "${arr[$i]}"
    fi
done
