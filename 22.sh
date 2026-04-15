echo -n "Enter sentence: "
read str

rev=""

for word in $str; do
    rev="$word $rev"
done

echo "Reversed sentence: $rev"
