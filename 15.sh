
echo -n "Enter binary Number :"
read num

decimal=0
power=1

while [ $num -gt 0 ]; do
    digit=$((num % 10))
    decimal=$((decimal + (digit * power)))
    power=$((power * 2))
    num=$((num / 10))
done

echo "Decimal representation is: $decimal"
