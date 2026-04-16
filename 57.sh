# Count Even and Odd Numbers
#!/bin/bash

echo "Enter how many numbers"
read n

even=0
odd=0

echo "Enter numbers:"

for ((i=1;i<=n;i++))
do
    read num
    if ((num % 2 == 0))
    then
        even=$((even + 1))
    else
        odd=$((odd + 1))
    fi
done

echo "Even = $even"
echo "Odd = $odd"
