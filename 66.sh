# Function to Check Prime
#!/bin/bash

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

echo "Enter number"
read num

is_prime $num
