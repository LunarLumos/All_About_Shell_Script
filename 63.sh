# Next Prime After Given Number
#!/bin/bash

echo "Enter number"
read n

num=$((n + 1))

while true
do
    flag=1

    if [ $num -lt 2 ]; then
        num=$((num + 1))
        continue
    fi

    for ((i=2;i*i<=num;i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            flag=0
            break
        fi
    done

    if [ $flag -eq 1 ]; then
        echo "$num"
        break
    fi

    num=$((num + 1))
done
