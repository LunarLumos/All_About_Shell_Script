# Function to Calculate GCD
#!/bin/bash

gcd() {
    a=$1
    b=$2

    while [ $b -ne 0 ]
    do
        temp=$b
        b=$((a % b))
        a=$temp
    done

    echo "$a"
}

echo "Enter two numbers"
read x y

gcd $x $y
