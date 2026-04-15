echo -n "Enter sentence: "
read str

count=0

for word in $str; do
    ((count++))
done

echo "Total words: $count"
