# Sum of Alternating Series
#!/bin/bash

echo "Enter N"
read n

sum=0

for ((i=1;i<=n;i++))
do
    if ((i%2==0))
    then
        sum=$((sum - i))
    else
        sum=$((sum + i))
    fi
done

echo "$sum"
