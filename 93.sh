# Validate Input Type Strictly Before Processing
#!/bin/bash

is_number() {
    case $1 in
        ''|*[!0-9]*) return 1 ;;
        *) return 0 ;;
    esac
}

add() {
    echo $((a + b))
}

sub() {
    echo $((a - b))
}

mul() {
    echo $((a * b))
}

div() {
    if [ $b -eq 0 ]; then
        echo "Error: Division by zero"
    else
        echo $((a / b))
    fi
}

menu() {
    echo "Enter two numbers"
    read a b

    is_number "$a" && is_number "$b"
    if [ $? -ne 0 ]; then
        echo "Invalid input: only numbers allowed"
        menu
        return
    fi

    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"

    read ch

    case $ch in
        1) add ;;
        2) sub ;;
        3) mul ;;
        4) div ;;
        5) exit ;;
        *) echo "Invalid choice" ;;
    esac

    menu
}

menu
