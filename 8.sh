
echo -n "Enter a number :"
read num

sum=0

for ((i=1;i<num;i++)); do
    if [ $((num % i )) -eq 0 ]; then
        sum=$((sum + i))
    fi
done

if [ $sum -eq $num ]; then
    echo "$num is a perfect number"
else
    echo "$num is not a perfect number"
fi
