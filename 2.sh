echo -n "Enter first Number :"
read num1

echo -n "Enter second Number :"
read num2

if [ "$num1" -gt "$num2" ]; then
    max=$num1
else
    max=$num2
fi

while true; do
    if [ $((max % num1)) -eq 0 ] && [ $((max % num2)) -eq 0 ]; then
        echo "LCM of $num1 and $num2 is $max"
        break
    fi
    max=$((max + 1))
done
