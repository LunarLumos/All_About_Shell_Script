echo -n "Enter a number :"
read num

if [ $num -lt 1 ]; then
    echo "Not Prime Number."
    exit
fi

count=0

for ((i=1; i<=num;i++)); do
    if [ $((num % i)) -eq 0 ]; then
        count=$((count + 1))
    fi
done

if [ $count -eq 2 ]; then
    echo "The number $num is a Prime Number."
else
    echo "The number $num is not a Prime Number."
fi
