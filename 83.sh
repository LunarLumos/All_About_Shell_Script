# Average of Array Elements
#!/bin/bash

echo "Enter how many numbers"
read n

sum=0

echo "Enter numbers:"
for ((i=0;i<n;i++))
do
    read arr[$i]
    sum=$((sum + arr[$i]))
done

avg=$((sum / n))

echo "$avg"
