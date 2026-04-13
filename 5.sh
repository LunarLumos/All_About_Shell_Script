
echo -n "Enter starting number :"
read start

echo -n "Enter ending number :"
read end

echo "Prime numbers between $start and $end are :"

for ((i=start; i<=end; i++)); do
    if [ "$i" -lt 2 ]; then
        continue
    fi

    num=$i
    count=0

    for ((j=1; j<=num; j++)); do
        if [ $((num % j)) -eq 0 ]; then
            count=$((count + 1))
        fi
    done

    if [ $count -eq 2 ]; then
        echo "$num"
    fi
done
