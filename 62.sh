# Check Strong Number
#!/bin/bash

echo "Enter number"
read n

num=$n
sum=0

while [ $n -gt 0 ]
do
    d=$((n % 10))
    fact=1

    for ((i=1;i<=d;i++))
    do
        fact=$((fact * i))
    done

    sum=$((sum + fact))
    n=$((n / 10))
done

if [ $sum -eq $num ]; then
    echo "Strong Number"
else
    echo "Not Strong Number"
fi
