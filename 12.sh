
echo -n "Enter a number :"
read num 

while [ $num -ge 9 ]; do
    sum=0

    while [ $num -gt 0 ]; do
        sum=$(($sum + ($num % 10) ))
        num=$(($num / 10))
    done
    num=$sum
done

echo "Sum of digits until single digit is: $num"
