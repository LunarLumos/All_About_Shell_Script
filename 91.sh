# CLI Calculator Using Arguments with Validation
#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 operator num2"
    exit 1
fi

a=$1
op=$2
b=$3

case $op in
    +) echo $((a + b)) ;;
    -) echo $((a - b)) ;;
    \*) echo $((a * b)) ;;
    /)
        if [ $b -eq 0 ]; then
            echo "Error: Division by zero"
        else
            echo $((a / b))
        fi
        ;;
    *)
        echo "Invalid operator"
        ;;
esac
