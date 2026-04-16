# Function to Compute Arithmetic Operations
#!/bin/bash

calc() {
    a=$1
    b=$2
    op=$3

    if [ "$op" = "+" ]; then
        echo $((a + b))
    elif [ "$op" = "-" ]; then
        echo $((a - b))
    elif [ "$op" = "*" ]; then
        echo $((a * b))
    elif [ "$op" = "/" ]; then
        echo $((a / b))
    else
        echo "Invalid operator"
    fi
}

echo "Enter two numbers"
read x y

echo "Enter operator (+ - * /)"
read o

calc $x $y "$o"
