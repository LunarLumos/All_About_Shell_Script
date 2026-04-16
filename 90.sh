# Union of Arrays
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

echo "Union:"

for ((i=0;i<n1;i++))
do
    echo "${a[$i]}"
done

for ((i=0;i<n2;i++))
do
    flag=0
    for ((j=0;j<n1;j++))
    do
        if [ ${b[$i]} -eq ${a[$j]} ]; then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]; then
        echo "${b[$i]}"
    fi
done
