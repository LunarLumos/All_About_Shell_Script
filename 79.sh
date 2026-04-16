# Function Calling Other Functions (Nested)
#!/bin/bash

add() {
    echo $(( $1 + $2 ))
}

multiply() {
    echo $(( $1 * $2 ))
}

process() {
    a=$1
    b=$2

    sum=$(add $a $b)
    prod=$(multiply $a $b)

    echo "Sum = $sum"
    echo "Product = $prod"
}

echo "Enter two numbers"
read x y

process $x $y
