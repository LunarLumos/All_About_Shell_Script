# Mini Math Toolkit (Factorial, Prime, GCD, LCM)
#!/bin/bash

factorial() {
    n=$1
    f=1
    for ((i=1;i<=n;i++))
    do
        f=$((f * i))
    done
    echo $f
}

is_prime() {
    n=$1
    if [ $n -lt 2 ]; then
        echo "Not Prime"
        return
    fi

    for ((i=2;i*i<=n;i++))
    do
        if [ $((n % i)) -eq 0 ]; then
            echo "Not Prime"
            return
        fi
    done

    echo "Prime"
}

gcd() {
    a=$1
    b=$2

    while [ $b -ne 0 ]
    do
        t=$b
        b=$((a % b))
        a=$t
    done

    echo $a
}

lcm() {
    a=$1
    b=$2
    g=$(gcd $a $b)
    echo $((a * b / g))
}

echo "1. Factorial"
echo "2. Prime Check"
echo "3. GCD"
echo "4. LCM"
echo "5. Exit"

read ch

case $ch in
    1)
        echo "Enter number"
        read n
        factorial $n
        ;;
    2)
        echo "Enter number"
        read n
        is_prime $n
        ;;
    3)
        echo "Enter two numbers"
        read a b
        gcd $a $b
        ;;
    4)
        echo "Enter two numbers"
        read a b
        lcm $a $b
        ;;
    5) exit ;;
    *) echo "Invalid choice" ;;
esac
