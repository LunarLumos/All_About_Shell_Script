# Sum of Prime Numbers in Range
#!/bin/bash

echo "Enter range (start end)"
read a b

sum=0

for ((i=a;i<=b;i++))
do
    if ((i<2)); then
        continue
    fi

    flag=1

    for ((j=2;j*j<=i;j++))
    do
        if ((i%j==0)); then
            flag=0
            break
        fi
    done

    if ((flag==1)); then
        sum=$((sum + i))
    fi
done

echo "$sum"
