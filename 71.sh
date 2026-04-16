# Function to Reverse Number
#!/bin/bash

reverse() {
    n=$1
    rev=0

    while [ $n -gt 0 ]
    do
        d=$((n % 10))
        rev=$((rev * 10 + d))
        n=$((n / 10))
    done

    echo "$rev"
}

echo "Enter number"
read num

reverse $num
