# Function Returning Max Value
#!/bin/bash

max() {
    m=$1

    for n in "$@"
    do
        if [ $n -gt $m ]; then
            m=$n
        fi
    done

    echo "$m"
}

echo "Enter numbers (space separated):"
read -a arr

max "${arr[@]}"
