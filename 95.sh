# Process Multiple Numbers from Command Line
#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 num1 num2 num3 ..."
    exit 1
fi

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
