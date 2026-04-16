# Function to Calculate LCM
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

lcm() {
    a=$1
    b=$2

    g=$(gcd $a $b)

    echo $((a * b / g))
}

echo "Enter two numbers"
read x y

lcm $x $y
