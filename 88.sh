# Merge Two Arrays
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

echo "Merged array:"

for ((i=0;i<n1;i++))
do
    echo "${a[$i]}"
done

for ((i=0;i<n2;i++))
do
    echo "${b[$i]}"
done
