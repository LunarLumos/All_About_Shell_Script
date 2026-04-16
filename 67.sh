# Function to Check Palindrome Number
#!/bin/bash

is_palindrome() {
    n=$1
    temp=$n
    rev=0

    while [ $temp -gt 0 ]
    do
        d=$((temp % 10))
        rev=$((rev * 10 + d))
        temp=$((temp / 10))
    done

    if [ $n -eq $rev ]; then
        echo "Palindrome"
    else
        echo "Not Palindrome"
    fi
}

echo "Enter number"
read num

is_palindrome $num
