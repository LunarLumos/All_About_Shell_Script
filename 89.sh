# Intersection of Arrays
#!/bin/bash

echo "Enter size of first array"
read n1

echo "Enter elements of first array:"
for ((i=0;i<n1;i++))
do
    read a[$i]
done

echo "Enter size of second array"
read n2

echo "Enter elements of second array:"
for ((i=0;i<n2;i++))
do
    read b[$i]
done

echo "Intersection:"

for ((i=0;i<n1;i++))
do
    for ((j=0;j<n2;j++))
    do
        if [ ${a[$i]} -eq ${b[$j]} ]; then
            echo "${a[$i]}"
            break
        fi
    done
done
