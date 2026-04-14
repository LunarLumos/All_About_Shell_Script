
echo -n "Enter a number :"
read num

while [ $num -gt 1 ]; do
    if [ $((num % 2)) -ne 0 ]; then
        echo "Not power of 2"
        exit
    fi
    num=$((num / 2))
done

echo "Power of 2"
