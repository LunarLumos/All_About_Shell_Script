# Modular Calculator Using Functions
#!/bin/bash

add() {
    echo $(( $1 + $2 ))
}

sub() {
    echo $(( $1 - $2 ))
}

mul() {
    echo $(( $1 * $2 ))
}

div() {
    echo $(( $1 / $2 ))
}

calculator() {
    echo "Enter two numbers"
    read a b

    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"

    read ch

    if [ $ch -eq 1 ]; then
        add $a $b
    elif [ $ch -eq 2 ]; then
        sub $a $b
    elif [ $ch -eq 3 ]; then
        mul $a $b
    elif [ $ch -eq 4 ]; then
        div $a $b
    elif [ $ch -eq 5 ]; then
        exit
    else
        echo "Invalid choice"
    fi

    calculator
}

calculator
