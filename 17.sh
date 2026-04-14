
echo -n "Enter numbers (space separated) :"
read -a num_array

min=999999

for num in "${num_array[@]}"; do
    if [ $num -lt $min ]; then
        min=$num
    fi
done

second=999999

for num in "${num_array[@]}"; do
    if [ $num -lt $second ] && [ $num -ne $min ]; then
        second=$num
    fi
done

echo "Minimum number is: $min"
echo "Second minimum number is: $second"
