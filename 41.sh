# Capitalize first letter of each word

echo -n "Enter sentence: "
read str

result=""

for word in $str; do
    first=${word:0:1}
    rest=${word:1}

    first=$(echo "$first" | tr 'a-z' 'A-Z')

    result="$result$first$rest "
done

echo "Result: $result"
