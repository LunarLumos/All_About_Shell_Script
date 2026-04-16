# HCF of Multiple Numbers
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
read a

hcf=$a

for ((i=2;i<=n;i++))
do
    read b
    x=$hcf
    y=$b

    while [ $y -ne 0 ]
    do
        t=$y
        y=$((x % y))
        x=$t
    done

    hcf=$x
done

echo "$hcf"
