# Frequency of Each Number
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
done

echo "Frequency:"

for ((i=0;i<n;i++))
do
    count=1

    if [ ${arr[$i]} -ne -999999 ]; then

        for ((j=i+1;j<n;j++))
        do
            if [ ${arr[$i]} -eq ${arr[$j]} ]; then
                count=$((count + 1))
                arr[$j]=-999999
            fi
        done

        echo "${arr[$i]} occurs $count times"
    fi
done
