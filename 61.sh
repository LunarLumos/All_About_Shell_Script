# Power Without Using ** Operator
#!/bin/bash

echo "Enter base and power"
read base power

result=1

for ((i=1;i<=power;i++))
do
    result=$((result * base))
done

echo "$result"
