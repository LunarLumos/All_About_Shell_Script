
echo -n "Enter numbers (space separated) :"
read -a num_array

max=${num_array[0]}
min=${num_array[0]}

for num in "${num_array[@]}"; do
    if [ $num -gt $max ]; then
        max=$num
    fi

    if [ $num -lt $min ]; then
        min=$num
    fi
done



echo "Maximum number is: $max"
echo "Minimum number is: $min"
