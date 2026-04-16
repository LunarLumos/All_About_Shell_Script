# Function to Process List of Numbers
#!/bin/bash

process() {
    sum=0
    max=$1
    min=$1

    for n in "$@"
    do
        sum=$((sum + n))

        if [ $n -gt $max ]; then
            max=$n
        fi

        if [ $n -lt $min ]; then
            min=$n
        fi
    done

    echo "Sum = $sum"
    echo "Max = $max"
    echo "Min = $min"
}

echo "Enter numbers (space separated):"
read -a arr

process "${arr[@]}"
