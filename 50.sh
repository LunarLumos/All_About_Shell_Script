# Factorial of Large Number
#!/bin/bash

echo "Enter number"
read n

res=1

for ((i=2;i<=n;i++))
do
    res=$(echo "$res * $i" | bc)
done

echo "$res"
