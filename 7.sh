
echo -n "Enter starting number :"
read start

echo -n "Enter ending number :"
read end

echo "Armstrong numbers between $start and $end are :"

for ((i=start; i<=end; i++)); do
    temp=$i
    sum=0

    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit * digit * digit))
        temp=$((temp / 10))
    done

    if [ $sum -eq $i ]; then
        echo "$i"
    fi
done
