echo -n "Enter sentence: "
read str

echo -n "Enter word to search: "
read word

count=0

for w in $str; do
    if [ "$w" = "$word" ]; then
        ((count++))
    fi
done

echo "Frequency of '$word': $count"
