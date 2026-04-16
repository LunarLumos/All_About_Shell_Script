# Function Returning Min Value
#!/bin/bash

min() {
    m=$1

    for n in "$@"
    do
        if [ $n -lt $m ]; then
            m=$n
        fi
    done

    echo "$m"
}

echo "Enter numbers (space separated):"
read -a arr

min "${arr[@]}"
