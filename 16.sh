
echo -n "Enter numbers (space separated) :"
read -a num_array

max=-999999

for num in "${num_array[@]}"; do
    if [ $num -gt $max ]; then
        max=$num
    fi
done

second=-999999

for num in "${num_array[@]}"; do
    if [ $num -gt $second ] && [ $num -ne $max ]; then
        second=$num
    fi
done

echo "Maximum number is: $max"
echo "Second maximum number is: $second"
