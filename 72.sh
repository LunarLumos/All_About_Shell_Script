# Function to Reverse String
#!/bin/bash

reverse() {
    str=$1
    rev=""

    len=${#str}

    for ((i=len-1;i>=0;i--))
    do
        rev="$rev${str:i:1}"
    done

    echo "$rev"
}

echo "Enter string"
read s

reverse "$s"
