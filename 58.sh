# Separate Even and Odd Numbers
#!/bin/bash

echo "Enter how many numbers"
read n

even=""
odd=""

echo "Enter numbers:"

for ((i=1;i<=n;i++))
do
    read num
    if ((num % 2 == 0))
    then
        even="$even $num"
    else
        odd="$odd $num"
    fi
done

echo "Even numbers:$even"
echo "Odd numbers:$odd"
