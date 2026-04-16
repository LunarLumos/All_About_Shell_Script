# Count words longer than N length

echo -n "Enter sentence: "
read str

echo -n "Enter N: "
read n

count=0

for word in $str; do
    len=${#word}
    if [ $len -gt $n ]; then
        ((count++))
    fi
done

echo "Words longer than $n: $count"
