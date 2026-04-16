# Full Interactive Mathematical Engine
#!/bin/bash

is_number() {
    case $1 in
        ''|*[!0-9]*) return 1 ;;
        *) return 0 ;;
    esac
}

factorial() {
    n=$1
    f=1
    for ((i=1;i<=n;i++))
    do
        f=$((f * i))
    done
    echo "Factorial = $f"
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
    echo "GCD = $a"
}

lcm() {
    a=$1
    b=$2
    g=$(gcd $a $b | awk '{print $2}')
    echo "LCM = $((a * b / g))"
}

add() { echo $((a + b)); }
sub() { echo $((a - b)); }
mul() { echo $((a * b)); }
div() {
    if [ $b -eq 0 ]; then
        echo "Error: Division by zero"
    else
        echo $((a / b))
    fi
}

menu() {
    echo "==== Math Engine ===="
    echo "1. Add/Sub/Mul/Div"
    echo "2. Factorial"
    echo "3. Prime Check"
    echo "4. GCD"
    echo "5. LCM"
    echo "6. Exit"

    read ch

    case $ch in
        1)
            echo "Enter two numbers"
            read a b

            if ! is_number "$a" || ! is_number "$b"; then
                echo "Invalid input"
                menu
                return
            fi

            echo "1.Add 2.Sub 3.Mul 4.Div"
            read op

            case $op in
                1) add ;;
                2) sub ;;
                3) mul ;;
                4) div ;;
                *) echo "Invalid operation" ;;
            esac
            ;;
        2)
            echo "Enter number"
            read n
            factorial $n
            ;;
        3)
            echo "Enter number"
            read n
            is_prime $n
            ;;
        4)
            echo "Enter two numbers"
            read a b
            gcd $a b
            ;;
        5)
            echo "Enter two numbers"
            read a b
            lcm $a b
            ;;
        6) exit ;;
        *) echo "Invalid choice" ;;
    esac

    menu
}

menu
