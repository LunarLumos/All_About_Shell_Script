# Handle Errors (Division by Zero, Invalid Input)
#!/bin/bash

is_number() {
    case $1 in
        ''|*[!0-9]*) return 1 ;;
        *) return 0 ;;
    esac
}

menu() {
    echo "Enter two numbers"
    read a b

    if ! is_number "$a" || ! is_number "$b"; then
        echo "Invalid input"
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
        1) echo $((a + b)) ;;
        2) echo $((a - b)) ;;
        3) echo $((a * b)) ;;
        4)
            if [ $b -eq 0 ]; then
                echo "Division by zero error"
            else
                echo $((a / b))
            fi
            ;;
        5) exit ;;
        *) echo "Invalid choice" ;;
    esac

    menu
}

menu
