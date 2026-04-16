# LCM of Multiple Numbers
#!/bin/bash

echo "Enter how many numbers"
read n

echo "Enter numbers:"
read a

lcm=$a

for ((i=2;i<=n;i++))
do
    read b

    x=$lcm
    y=$b

    while [ $y -ne 0 ]
    do
        t=$y
        y=$((x % y))
        x=$t
    done

    gcd=$x

    lcm=$((lcm * b / gcd))
done

echo "$lcm"
