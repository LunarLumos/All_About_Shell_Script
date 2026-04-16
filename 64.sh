# Previous Prime Before Given Number
#!/bin/bash

echo "Enter number"
read n

num=$((n - 1))

while [ $num -ge 2 ]
do
    flag=1

    for ((i=2;i*i<=num;i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            flag=0
            break
        fi
    done

    if [ $flag -eq 1 ]; then
        echo "$num"
        exit
    fi

    num=$((num - 1))
done

echo "No previous prime"
