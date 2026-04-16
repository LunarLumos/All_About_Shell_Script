# Function to Handle Menu System
#!/bin/bash

menu() {
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"

    read ch

    if [ $ch -eq 5 ]; then
        exit
    fi

    echo "Enter two numbers"
    read a b

    if [ $ch -eq 1 ]; then
        echo $((a + b))
    elif [ $ch -eq 2 ]; then
        echo $((a - b))
    elif [ $ch -eq 3 ]; then
        echo $((a * b))
    elif [ $ch -eq 4 ]; then
        echo $((a / b))
    else
        echo "Invalid choice"
    fi

    menu
}

menu
