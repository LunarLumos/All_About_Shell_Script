# Menu Driven Calculator Using Case + Functions
#!/bin/bash

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
